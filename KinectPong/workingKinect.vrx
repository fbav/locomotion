<?xml version="1.0" encoding="UTF-8"?>
<MiddleVR>
	<Kernel LogLevel="2" LogInSimulationFolder="0" EnableCrashHandler="0" Version="1.6.1.f1" />
	<DeviceManager>
		<Driver Type="vrDriverDirectInput" />
		<Driver Type="vrDriverKinect" />
		<Wand Name="Wand0" Driver="0" Axis="0" HorizontalAxis="0" HorizontalAxisScale="1" VerticalAxis="1" VerticalAxisScale="1" AxisDeadZone="0.3" Buttons="0" Button0="0" Button1="1" Button2="2" Button3="3" Button4="4" Button5="5" />
	</DeviceManager>
	<DisplayManager Fullscreen="0" AlwaysOnTop="1" WindowBorders="0" ShowMouseCursor="1" VSync="1" GraphicsRenderer="1" AntiAliasing="0" ForceHideTaskbar="0" SaveRenderTarget="0" ChangeWorldScale="0" WorldScale="1">
		<Node3D Name="VRSystemCenterNode" Tag="VRSystemCenter" Parent="None" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" />
		<Node3D Name="Kinect0.RootNode" Parent="VRSystemCenterNode" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" />
		<Node3D Name="Offset" Parent="VRSystemCenterNode" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" />
		<Node3D Name="Screens" Parent="Offset" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,1.100000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" />
		<Screen Name="FrontScreen" Parent="Screens" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,1.480000,0.000000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" Width="2.98" Height="2.2" />
		<Screen Name="LeftScreen" Parent="Screens" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="-1.490000,0.000000,0.000000" OrientationLocal="0.000000,0.000000,-0.707107,0.707106" Width="2.96" Height="2.2" />
		<Screen Name="RightScreen" Parent="Screens" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="1.490000,0.000000,0.000000" OrientationLocal="0.000000,0.000000,0.707107,0.707106" Width="2.96" Height="2.2" />
		<Screen Name="FloorScreen" Parent="Screens" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.050000,-1.100000" OrientationLocal="0.000000,0.707107,-0.707107,0.000000" Width="2.98" Height="2.86" />
		<Node3D Name="Kinect0.User0.HipCenter_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.HipCenter" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="Kinect0.User0.Spine_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Spine" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="Kinect0.User0.ShoulderCenter_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.ShoulderCenter" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="Kinect0.User0.Head_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Head" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="HeadNode" Tag="Head" Parent="Kinect0.User0.Head_Node" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" />
		<Node3D Name="HeadOffset" Parent="HeadNode" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" OrientationLocal="0.500000,0.500000,0.500000,0.500000" />
		<CameraStereo Name="FloorCameraStereo" Parent="HeadOffset" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" VerticalFOV="60" Near="0.1" Far="1000" Screen="FloorScreen" ScreenDistance="1" UseViewportAspectRatio="0" AspectRatio="1.04196" InterEyeDistance="0.063" LinkConvergence="1" />
		<CameraStereo Name="FrontCameraStereo" Parent="HeadOffset" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" VerticalFOV="60" Near="0.1" Far="1000" Screen="FrontScreen" ScreenDistance="1" UseViewportAspectRatio="0" AspectRatio="1.35455" InterEyeDistance="0.063" LinkConvergence="1" />
		<CameraStereo Name="LeftCameraStereo" Parent="HeadOffset" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" VerticalFOV="60" Near="0.1" Far="1000" Screen="LeftScreen" ScreenDistance="1" UseViewportAspectRatio="0" AspectRatio="1.34545" InterEyeDistance="0.063" LinkConvergence="1" />
		<CameraStereo Name="RightCameraStereo" Parent="HeadOffset" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" VerticalFOV="60" Near="0.1" Far="1000" Screen="RightScreen" ScreenDistance="1" UseViewportAspectRatio="0" AspectRatio="1.34545" InterEyeDistance="0.063" LinkConvergence="1" />
		<Camera Name="Camera0" Parent="HeadNode" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="-0.049362,-0.000728,0.000632" VerticalFOV="60" Near="0.1" Far="1000" Screen="FrontScreen" ScreenDistance="1" UseViewportAspectRatio="0" AspectRatio="1.35455" />
		<Node3D Name="Kinect0.User0.Left_Shoulder_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Left_Shoulder" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="Kinect0.User0.Left_Elbow_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Left_Elbow" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="Kinect0.User0.Left_Wrist_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Left_Wrist" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="Kinect0.User0.Left_Hand_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Left_Hand" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="Kinect0.User0.Right_Shoulder_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Right_Shoulder" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="Kinect0.User0.Right_Elbow_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Right_Elbow" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="Kinect0.User0.Right_Wrist_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Right_Wrist" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="Kinect0.User0.Right_Hand_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Right_Hand" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="HandNode" Tag="Hand" Parent="Kinect0.User0.Right_Hand_Node" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" />
		<Node3D Name="Kinect0.User0.Left_Hip_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Left_Hip" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="Kinect0.User0.Left_Knee_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Left_Knee" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="Kinect0.User0.Left_Ankle_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Left_Ankle" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="Kinect0.User0.Left_Foot_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Left_Foot" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="Kinect0.User0.Right_Hip_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Right_Hip" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="Kinect0.User0.Right_Knee_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Right_Knee" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="Kinect0.User0.Right_Ankle_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Right_Ankle" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Node3D Name="Kinect0.User0.Right_Foot_Node" Parent="Kinect0.RootNode" Tracker="Kinect0.User0.Right_Foot" IsFiltered="0" Filter="0" UseTrackerX="1" UseTrackerY="1" UseTrackerZ="1" UseTrackerYaw="1" UseTrackerPitch="1" UseTrackerRoll="1" />
		<Viewport Name="FrontViewport" Left="1400" Top="0" Width="1400" Height="1050" Camera="FrontCameraStereo" Stereo="1" StereoMode="0" CompressSideBySide="0" StereoInvertEyes="1" OculusRiftWarping="0" UseHomography="0" />
		<Viewport Name="LeftViewport" Left="0" Top="0" Width="1400" Height="1050" Camera="LeftCameraStereo" Stereo="1" StereoMode="0" CompressSideBySide="0" StereoInvertEyes="1" OculusRiftWarping="0" UseHomography="0" />
		<Viewport Name="RightViewport" Left="2800" Top="0" Width="1400" Height="1050" Camera="RightCameraStereo" Stereo="1" StereoMode="0" CompressSideBySide="0" StereoInvertEyes="1" OculusRiftWarping="0" UseHomography="0" />
		<Viewport Name="FloorViewport" Left="4200" Top="0" Width="1100" Height="1050" Camera="FloorCameraStereo" Stereo="1" StereoMode="0" CompressSideBySide="0" StereoInvertEyes="1" OculusRiftWarping="0" UseHomography="0" />
	</DisplayManager>
	<ClusterManager NVidiaSwapLock="0" DisableVSyncOnServer="1" ForceOpenGLConversion="0" BigBarrier="0" SimulateClusterLag="0" MultiGPUEnabled="0" ImageDistributionMaxPacketSize="8000" />
</MiddleVR>
