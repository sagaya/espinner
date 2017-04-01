//
//  espinner.swift
//  Pods
//
//  Created by Sagaya Abdulhafeez on 01/04/2017.
//
//

open class espinner {
    internal static var actInd: UIActivityIndicatorView?
    internal static var spinnerView: UIActivityIndicatorView?
    
    open static var style: UIActivityIndicatorViewStyle = .white
    open static var backgroundColor: UIColor = UIColor(white: 0, alpha: 0.6)
    
    internal static var touchHandler: (() -> Void)?
    
    open static func start(style: UIActivityIndicatorViewStyle = style, backgroundColor: UIColor = backgroundColor, touchHandler: (() -> Void)? = nil, uiview:UIView) {
        if spinnerView == nil,
            let _ = UIApplication.shared.keyWindow {
            let _ = UIScreen.main.bounds
            
            let container = UIView()
            container.frame = uiview.frame
            container.center = uiview.center
            container.backgroundColor =  UIColor(white: 0, alpha: 0.3)
            
            let loadingView: UIView = UIView()
            loadingView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
            loadingView.center = uiview.center
            loadingView.backgroundColor = backgroundColor
            loadingView.clipsToBounds = true
            loadingView.layer.cornerRadius = 10
            
            let spinnerFrame = CGRect(x: 0, y: 0, width: 40, height: 40)
            spinnerView = UIActivityIndicatorView(frame: spinnerFrame)
            spinnerView?.activityIndicatorViewStyle = .white
            if backgroundColor == .white{
                spinnerView?.activityIndicatorViewStyle = .gray
            }
            spinnerView?.center = CGPoint(x: loadingView.frame.size.width / 2, y: loadingView.frame.size.height / 2)
            loadingView.addSubview(spinnerView!)
            container.addSubview(loadingView)
            uiview.addSubview(container)
            UIApplication.shared.beginIgnoringInteractionEvents()
            spinnerView?.startAnimating()
        }
    }
    
    open static func stop() {
        if let _ = spinnerView {
            spinnerView!.stopAnimating()
            spinnerView!.removeFromSuperview()
            spinnerView = nil
        }
    }
    
}
