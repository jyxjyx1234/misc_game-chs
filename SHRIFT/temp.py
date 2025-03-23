import re
from urllib.parse import urlparse, parse_qs

def clean_tmall_url(url):
    """
    Takes a Tmall URL and returns a clean version with only the id parameter
    """
    try:
        # Parse the URL
        parsed_url = urlparse(url)
        
        # Get the base domain and path
        base_url = f"{parsed_url.scheme}://{parsed_url.netloc}{parsed_url.path}"
        
        # Extract query parameters
        query_params = parse_qs(parsed_url.query)
        
        # Check if 'id' parameter exists
        if 'id' in query_params:
            product_id = query_params['id'][0]
            return f"{base_url}?id={product_id}"
        else:
            return "No id parameter found in the URL"
    except Exception as e:
        return f"Error processing URL: {str(e)}"

# Example usage
if __name__ == "__main__":
    input_url = input("Please paste the Tmall URL: ")
    clean_url = clean_tmall_url(input_url.strip())
    print("\nCleaned URL:")
    print(clean_url)