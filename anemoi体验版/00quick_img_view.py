import tkinter as tk
from tkinter import filedialog, messagebox
from PIL import Image, ImageTk
import os

# Try to import tkinterdnd2 for Drag and Drop support
try:
    from tkinterdnd2 import DND_FILES, TkinterDnD
    HAS_DND = True
    # If installed, the root must be an instance of TkinterDnD.Tk
    # We will handle this in the main block
except ImportError:
    HAS_DND = False

class ImageViewerApp:
    def __init__(self, root):
        self.root = root
        self.root.title("Quick Image Viewer")
        self.root.geometry("1200x800")

        # Data
        self.image_path = None
        self.pil_image = None     # Original full-res image
        self.tk_image = None      # Currently displayed (scaled) image
        self.scale = 1.0
        self.image_id = None
        
        self.start_x = 0
        self.start_y = 0
        self.current_rect = None
        self.is_dragging = False
        self.drag_threshold = 5

        # --- UI Setup ---
        
        # 1. Top Control Bar
        top_frame = tk.Frame(root, bd=1, relief=tk.RAISED)
        top_frame.pack(fill=tk.X, padx=2, pady=2)

        # Open Button
        btn_open = tk.Button(top_frame, text="Open File", command=self.open_file)
        btn_open.pack(side=tk.LEFT, padx=2)

        # Path Entry
        tk.Label(top_frame, text="Path:").pack(side=tk.LEFT, padx=(5, 2))
        self.path_entry = tk.Entry(top_frame, width=30)
        self.path_entry.pack(side=tk.LEFT, padx=2)
        self.path_entry.bind("<Return>", self.load_from_entry)

        # Zoom Controls
        tk.Button(top_frame, text="Zoom In (+)", command=self.zoom_in).pack(side=tk.LEFT, padx=5)
        tk.Button(top_frame, text="Zoom Out (-)", command=self.zoom_out).pack(side=tk.LEFT, padx=2)
        tk.Button(top_frame, text="100%", command=self.zoom_reset).pack(side=tk.LEFT, padx=2)
        
        self.lbl_zoom = tk.Label(top_frame, text="100%", width=6)
        self.lbl_zoom.pack(side=tk.LEFT, padx=2)

        # Image Info
        self.lbl_size = tk.Label(top_frame, text="Size: N/A", font=("Arial", 9, "bold"))
        self.lbl_size.pack(side=tk.LEFT, padx=10)

        # Clear Log
        btn_clear = tk.Button(top_frame, text="Clear Log", command=self.clear_log)
        btn_clear.pack(side=tk.RIGHT, padx=5)

        # 2. Main Area (Split Pane)
        self.paned = tk.PanedWindow(root, orient=tk.HORIZONTAL, sashwidth=4)
        self.paned.pack(fill=tk.BOTH, expand=True)

        # Left: Canvas Container
        canvas_frame = tk.Frame(self.paned)
        self.paned.add(canvas_frame, minsize=400, stretch="always")

        self.v_scroll = tk.Scrollbar(canvas_frame, orient=tk.VERTICAL)
        self.h_scroll = tk.Scrollbar(canvas_frame, orient=tk.HORIZONTAL)
        
        self.canvas = tk.Canvas(canvas_frame, bg="#e0e0e0",
                                xscrollcommand=self.h_scroll.set,
                                yscrollcommand=self.v_scroll.set)
        
        self.v_scroll.config(command=self.canvas.yview)
        self.h_scroll.config(command=self.canvas.xview)

        self.v_scroll.pack(side=tk.RIGHT, fill=tk.Y)
        self.h_scroll.pack(side=tk.BOTTOM, fill=tk.X)
        self.canvas.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)

        # Right: Sidebar (Log)
        sidebar_frame = tk.Frame(self.paned, width=300)
        self.paned.add(sidebar_frame, minsize=200, stretch="never")
        
        tk.Label(sidebar_frame, text="Info Log (Select to Copy)", bg="#ddd").pack(fill=tk.X)
        
        self.log_text = tk.Text(sidebar_frame, width=40, state=tk.DISABLED, font=("Consolas", 9))
        log_scroll = tk.Scrollbar(sidebar_frame, command=self.log_text.yview)
        self.log_text.config(yscrollcommand=log_scroll.set)
        
        log_scroll.pack(side=tk.RIGHT, fill=tk.Y)
        self.log_text.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)

        # --- Events ---
        self.canvas.bind("<ButtonPress-1>", self.on_mouse_down)
        self.canvas.bind("<B1-Motion>", self.on_mouse_drag)
        self.canvas.bind("<ButtonRelease-1>", self.on_mouse_up)
        
        # Mouse wheel for zoom (Control + Wheel)
        self.canvas.bind("<Control-MouseWheel>", self.on_mouse_wheel)

        # Drag and Drop Setup
        if HAS_DND:
            # Register the root window for dropping files
            self.root.drop_target_register(DND_FILES)
            self.root.dnd_bind('<<Drop>>', self.on_drop)
            self.log_message("System: Drag & Drop enabled (tkinterdnd2 detected).")
        else:
            self.log_message("System: Drag & Drop NOT available. Install 'tkinterdnd2' to enable.")

    def log_message(self, msg):
        self.log_text.config(state=tk.NORMAL)
        self.log_text.insert(tk.END, msg + "\n")
        self.log_text.see(tk.END)
        self.log_text.config(state=tk.DISABLED)
    
    def clear_log(self):
        self.log_text.config(state=tk.NORMAL)
        self.log_text.delete("1.0", tk.END)
        self.log_text.config(state=tk.DISABLED)

    def open_file(self):
        file_path = filedialog.askopenfilename(
            filetypes=[("Images", "*.png;*.jpg;*.jpeg;*.bmp;*.gif;*.webp;*.tiff"), ("All Files", "*.*")]
        )
        if file_path:
            self.load_image(file_path)

    def load_from_entry(self, event):
        path = self.path_entry.get().strip()
        if path.startswith('"') and path.endswith('"'):
            path = path[1:-1]
        if os.path.isfile(path):
            self.load_image(path)
        else:
            messagebox.showerror("Error", "File not found")

    def on_drop(self, event):
        # event.data contains the file path(s)
        # Handle potential curly braces for paths with spaces in some DND implementations
        data = event.data
        if data.startswith('{') and data.endswith('}'):
            data = data[1:-1]
        
        # If multiple files, take the first one
        # Windows DND might return space separated list if not braced? 
        # Usually tkinterdnd2 handles this well.
        # Simple check:
        if not os.path.isfile(data):
            # Try splitting?
            parts = data.split()
            if parts and os.path.isfile(parts[0]):
                data = parts[0]
        
        if os.path.isfile(data):
            self.load_image(data)
        else:
            self.log_message(f"Error: Could not load dropped item: {data}")

    def load_image(self, path):
        try:
            self.pil_image = Image.open(path)
            self.image_path = path
            self.scale = 1.0
            
            self.path_entry.delete(0, tk.END)
            self.path_entry.insert(0, path)
            self.root.title(f"Quick Image Viewer - {os.path.basename(path)}")
            
            self.update_display()
            self.log_message(f"Loaded: {path}")
            
        except Exception as e:
            messagebox.showerror("Error", f"Failed to load image: {e}")
            self.log_message(f"Error loading {path}: {e}")

    def update_display(self):
        if not self.pil_image:
            return
            
        # Calculate new size
        new_w = int(self.pil_image.width * self.scale)
        new_h = int(self.pil_image.height * self.scale)
        
        # Resize
        # Use NEAREST for pixel art / exact pixel checking
        resized = self.pil_image.resize((new_w, new_h), Image.Resampling.NEAREST)
        self.tk_image = ImageTk.PhotoImage(resized)
        
        self.canvas.delete("all")
        self.canvas.config(scrollregion=(0, 0, new_w, new_h))
        self.image_id = self.canvas.create_image(0, 0, anchor=tk.NW, image=self.tk_image)
        
        # Update labels
        self.lbl_zoom.config(text=f"{int(self.scale * 100)}%")
        self.lbl_size.config(text=f"Size: {self.pil_image.width} x {self.pil_image.height} ({self.pil_image.mode})")

    def zoom_in(self):
        self.scale *= 1.25
        self.update_display()

    def zoom_out(self):
        self.scale /= 1.25
        self.update_display()

    def zoom_reset(self):
        self.scale = 1.0
        self.update_display()
        
    def on_mouse_wheel(self, event):
        if event.delta > 0:
            self.zoom_in()
        else:
            self.zoom_out()

    def get_image_coords(self, canvas_x, canvas_y):
        # Convert canvas coords to image coords
        img_x = int(canvas_x / self.scale)
        img_y = int(canvas_y / self.scale)
        # Clamp
        img_x = max(0, min(img_x, self.pil_image.width - 1))
        img_y = max(0, min(img_y, self.pil_image.height - 1))
        return img_x, img_y

    def on_mouse_down(self, event):
        if not self.pil_image:
            return
        self.start_x = self.canvas.canvasx(event.x)
        self.start_y = self.canvas.canvasy(event.y)
        self.is_dragging = False
        
        # Remove previous temp rect
        if self.current_rect:
            self.canvas.delete(self.current_rect)
            self.current_rect = None

    def on_mouse_drag(self, event):
        if not self.pil_image:
            return
        
        cur_x = self.canvas.canvasx(event.x)
        cur_y = self.canvas.canvasy(event.y)
        
        if not self.is_dragging:
            if (abs(cur_x - self.start_x) > self.drag_threshold or 
                abs(cur_y - self.start_y) > self.drag_threshold):
                self.is_dragging = True
                self.current_rect = self.canvas.create_rectangle(
                    self.start_x, self.start_y, cur_x, cur_y, outline="red", width=2
                )
        else:
            self.canvas.coords(self.current_rect, self.start_x, self.start_y, cur_x, cur_y)

    def on_mouse_up(self, event):
        if not self.pil_image:
            return

        cur_x = self.canvas.canvasx(event.x)
        cur_y = self.canvas.canvasy(event.y)

        if self.is_dragging:
            self.is_dragging = False
            
            # Get canvas coords
            cx1, cy1 = min(self.start_x, cur_x), min(self.start_y, cur_y)
            cx2, cy2 = max(self.start_x, cur_x), max(self.start_y, cur_y)
            
            # Convert to image coords
            ix1, iy1 = self.get_image_coords(cx1, cy1)
            ix2, iy2 = self.get_image_coords(cx2, cy2)
            
            w = ix2 - ix1
            h = iy2 - iy1
            
            msg = f"[Rect] ({ix1}, {iy1}) - ({ix2}, {iy2}) | WxH: {w}x{h}"
            self.log_message(msg)
            
        else:
            # Click
            ix, iy = self.get_image_coords(self.start_x, self.start_y)
            
            try:
                pixel = self.pil_image.getpixel((ix, iy))
                msg = f"[Point] ({ix}, {iy}) | Val: {pixel}"
                self.log_message(msg)
                
                # Draw marker on canvas (temporary visual feedback)
                r = 3
                self.canvas.create_oval(self.start_x-r, self.start_y-r, self.start_x+r, self.start_y+r, outline="blue", width=2, tags="temp_marker")
                
            except Exception as e:
                pass

if __name__ == "__main__":
    if HAS_DND:
        root = TkinterDnD.Tk()
    else:
        root = tk.Tk()
        
    app = ImageViewerApp(root)
    root.mainloop()
