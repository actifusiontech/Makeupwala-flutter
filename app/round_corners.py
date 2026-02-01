from PIL import Image, ImageDraw

def add_corners(image_path, output_path, radius):
    img = Image.open(image_path).convert("RGBA")
    
    # Create mask
    mask = Image.new('L', img.size, 0)
    draw = ImageDraw.Draw(mask)
    draw.rounded_rectangle([(0, 0), img.size], radius=radius, fill=255)
    
    # Apply mask
    img.putalpha(mask)
    
    img.save(output_path)
    print(f"Saved to {output_path}")

# Apply to splash logo
try:
    # Radius of 20% of width (assuming square 1024x1024 -> ~200px radius)
    add_corners('assets/images/splash_logo.png', 'assets/images/splash_logo_rounded.png', 220)
    print("Success")
except Exception as e:
    print(f"Error: {e}")
