/*
* Copyright (C) 2015 - 2016, Daniel Dahan and CosmicMind, Inc. <http://cosmicmind.io>.
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
*
*	*	Redistributions of source code must retain the above copyright notice, this
*		list of conditions and the following disclaimer.
*
*	*	Redistributions in binary form must reproduce the above copyright notice,
*		this list of conditions and the following disclaimer in the documentation
*		and/or other materials provided with the distribution.
*
*	*	Neither the name of CosmicMind nor the names of its
*		contributors may be used to endorse or promote products derived from
*		this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
* FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
* DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

import UIKit
import Material

class ViewController: UIViewController {
	/// Reference for BottomTabBar.
	private var bottomTabBar: BottomTabBar!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		prepareView()
		prepareTabBar()
	}
	
	/// General preparation statements.
	private func prepareView() {
		view.backgroundColor = Color.white
	}
	
	/// Prepare tabBar.
	private func prepareTabBar() {
		bottomTabBar = BottomTabBar()
		// tabBar.autoLayoutToSuperview // Set to false if you want to handle the layout yourself.
		bottomTabBar.backgroundColor = Color.grey.darken4
		view.addSubview(bottomTabBar)
		
		let videoItem: UITabBarItem = UITabBarItem(title: "Video", image: Icon.cm.videocam, selectedImage: nil)
		videoItem.setTitleColor(Color.grey.base, forState: .Normal)
		videoItem.setTitleColor(Color.teal.base, forState: .Selected)
		
		let photoItem: UITabBarItem = UITabBarItem(title: "Photo", image: Icon.cm.photoCamera, selectedImage: nil)
		photoItem.setTitleColor(Color.grey.base, forState: .Normal)
		photoItem.setTitleColor(Color.teal.base, forState: .Selected)
		
		let libraryItem: UITabBarItem = UITabBarItem(title: "Library", image: Icon.cm.photoLibrary, selectedImage: nil)
		libraryItem.setTitleColor(Color.grey.base, forState: .Normal)
		libraryItem.setTitleColor(Color.teal.base, forState: .Selected)

		bottomTabBar.setItems([videoItem, photoItem, libraryItem], animated: true)
		bottomTabBar.tintColor = Color.teal.base // Sets the image color when highlighted.
		bottomTabBar.itemPositioning = .Automatic // Sets the alignment of the UITabBarItems.
		bottomTabBar.selectedItem = videoItem
	}
}
