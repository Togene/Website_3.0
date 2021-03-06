		varying float depth;
		uniform float _RangeStart;
		uniform float _RangeEnd;
		void main() 
		{	
				vec4 mvPosition = modelViewMatrix * vec4(position, 1.0);
				vec4 wPos = modelMatrix * vec4(position, 1.0);
				gl_Position = projectionMatrix * mvPosition;
				depth = clamp((((distance(wPos.xyz, cameraPosition.xyz) - _RangeStart)/_RangeEnd)), 0.0, 1.0);
		}