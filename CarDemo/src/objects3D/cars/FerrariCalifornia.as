﻿package objects3D.cars
{
	import away3d.entities.Mesh;
	import away3d.materials.ColorMaterial;
	import away3d.materials.TextureMaterial;
	import away3d.primitives.PlaneGeometry;
	import away3d.textures.BitmapTexture;
	
	import flash.geom.Vector3D;
	
	import objects3D.autoparts.Wheel;
	/**
	 * 
	 * @author austin.yue
	 * 
	 */
	public class FerrariCalifornia extends CarBase
	{
		
		[Embed(source="models/ferrari/california/InteriorSkin.jpg")] 
		private var InteriorMap:Class;
		
		[Embed(source="models/audi/s3/CarShadow.png", mimeType="image/png")] 
		private var ShadowMap:Class;
		
		private var _shadowMaterial:TextureMaterial;
		
		public function FerrariCalifornia(param1:ColorMaterial, param2:ColorMaterial, param3:ColorMaterial, param4:ColorMaterial)
		{
			super(param1, param2, param3, param4);
			
			this._interiorMaterial = new TextureMaterial(new BitmapTexture(new this.InteriorMap().bitmapData));
			this._shadowMaterial = new TextureMaterial(new BitmapTexture(new this.ShadowMap().bitmapData));
			this._shadowMaterial.alpha = 0.5;
			this.shadow = new Mesh(new PlaneGeometry(1120, 1120), this._shadowMaterial);
			this.shadow.y = 3;
			
			loadModel("models/ferrari/california/");
			
			frontRightWheel = new Wheel(param4, "camaro", "right");
			frontRightWheel.position = new Vector3D(-150, 70, -265);
			frontLeftWheel = new Wheel(param4, "camaro", "left");
			frontLeftWheel.position = new Vector3D(150, 70, -265);
			backRightWheel = new Wheel(param4, "camaro", "right");
			backRightWheel.position = new Vector3D(-154, 70, 245);
			backLeftWheel = new Wheel(param4, "camaro", "left");
			backLeftWheel.position = new Vector3D(154, 70, 245);
			super.y = -50;
			super.rotationY = -40;//-40 单位:角度
		}

		/**
		 * 方向 
		 * @return 
		 * 
		 */		
		public function get getRotationY():Number
		{
			return super.rotationY;
		}
		
		
	}
}
