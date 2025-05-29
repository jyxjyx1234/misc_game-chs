from Lib import *
from photoshop import Session

def split_psd(psd_path, output_dir=None):
    if output_dir is None:
        output_dir = os.path.dirname(psd_path)
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    with Session() as ps:
        ps.app.load(os.path.abspath(psd_path))
        original_doc = ps.active_document
        layers = original_doc.artLayers
        layer_count = len(layers)
        
        for i in range(layer_count):
            current_layer = layers[i]
            layer_name = current_layer.name
            was_visible = current_layer.visible
            current_layer.visible = True
            original_doc.activeLayer = current_layer
            layer_bounds = current_layer.bounds
            current_layer.copy()
            new_doc = ps.app.documents.add(1008, 1008, 72)
            new_doc.paste()
            pasted_layer = new_doc.activeLayer
            output_path = os.path.join(output_dir, f"{layer_name}.psd")
            options = ps.PhotoshopSaveOptions()
            new_doc.saveAs(os.path.abspath(output_path), options, True)
            new_doc.close(ps.SaveOptions.DoNotSaveChanges)
        original_doc.close(ps.SaveOptions.DoNotSaveChanges)

if __name__ == "__main__":
    psd_path = "font.psd"
    output_dir = "g00_redraw_bmp"
    split_psd(psd_path, output_dir)

# output_dir = "g00_redraw_bmp"
# os.makedirs("g00_redraw_bmp_", exist_ok=True)
# with Session() as ps:
#     for file in os.listdir(output_dir):
#         if file.endswith(".psd"):
#             file_path = os.path.join(output_dir, file)
#             abs_path = os.path.abspath(file_path)
#             ps.app.open(abs_path)
#             doc = ps.active_document
#             save_options = ps.PhotoshopSaveOptions()
#             save_options.maximizeCompatibility = True
#             doc.saveAs(abs_path.replace("g00_redraw_bmp", "g00_redraw_bmp_"), save_options, True)
#             doc.close(ps.SaveOptions.DoNotSaveChanges)
        