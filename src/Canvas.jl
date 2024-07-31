### A Pluto.jl notebook ###
# v0.19.45

using Markdown
using InteractiveUtils

# ╔═╡ a29c75cc-f3ba-48bb-9971-3951fca4b010
using HypertextLiteral

# ╔═╡ f4637b04-4f60-11ef-21e5-1b2f11daa914
md"""
# Canvas
"""

# ╔═╡ 6c803c31-6444-4fd0-ae84-45c388d64c83
@htl("""
<canvas id="testcanvas"></canvas>

<script>
document.addEventListener('mousedown', startPainting); 
document.addEventListener('mouseup', stopPainting); 
document.addEventListener('mousemove', sketch);

const canvas = document.querySelector('#testcanvas'); 
   
// Context for the canvas for 2 dimensional operations 
const ctx = canvas.getContext('2d'); 

// Stores the initial position of the cursor 
let coord = {x:0 , y:0};  
   
// This is the flag that we are going to use to  
// trigger drawing 
let paint = false; 
    
// Updates the coordianates of the cursor when  
// an event e is triggered to the coordinates where  
// the said event is triggered. 
function getPosition(event){ 
  coord.x = event.clientX - canvas.offsetLeft; 
  coord.y = event.clientY - canvas.offsetTop; 
} 
  
// The following functions toggle the flag to start 
// and stop drawing 
function startPainting(event){ 
  paint = true; 
  getPosition(event); 
}

function stopPainting(){ 
  paint = false; 
} 
    
function sketch(event){ 
  if (!paint) return; 
  ctx.beginPath(); 
    
  ctx.lineWidth = 5; 
   
  // Sets the end of the lines drawn 
  // to a round shape. 
  ctx.lineCap = 'round'; 
    
  ctx.strokeStyle = 'green'; 
      
  // The cursor to start drawing 
  // moves to this coordinate 
  ctx.moveTo(coord.x, coord.y); 
   
  // The position of the cursor 
  // gets updated as we move the 
  // mouse around. 
  getPosition(event); 
   
  // A line is traced from start 
  // coordinate to this coordinate 
  ctx.lineTo(coord.x , coord.y); 
    
  // Draws the line. 
  ctx.stroke(); 
}
</script>
""")

# ╔═╡ 252ba365-3994-447d-bc19-3f547d36e447


# ╔═╡ e77a9b98-2fd2-47f4-940d-cf1310ffd28a


# ╔═╡ 51b8d138-9373-4b42-87c3-6a9480ab848d
md"""
## Definition
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
HypertextLiteral = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"

[compat]
HypertextLiteral = "~0.9.5"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.4"
manifest_format = "2.0"
project_hash = "5b37abdf7398dc5da4cd347d0609990238d895bb"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "7134810b1afce04bbc1045ca1985fbe81ce17653"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.5"

[[deps.Tricks]]
git-tree-sha1 = "7822b97e99a1672bfb1b49b668a6d46d58d8cbcb"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.9"
"""

# ╔═╡ Cell order:
# ╟─f4637b04-4f60-11ef-21e5-1b2f11daa914
# ╠═6c803c31-6444-4fd0-ae84-45c388d64c83
# ╠═252ba365-3994-447d-bc19-3f547d36e447
# ╠═e77a9b98-2fd2-47f4-940d-cf1310ffd28a
# ╟─51b8d138-9373-4b42-87c3-6a9480ab848d
# ╠═a29c75cc-f3ba-48bb-9971-3951fca4b010
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
