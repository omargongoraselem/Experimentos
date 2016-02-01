// Comentarios Prueba


//1 EL login todavía que crees la clase en .swift, que sería lo que vendría siendo el .h y .m en objective c

//2 El login todavía te falta que tenga los autolayouts, eso también te lo van a calificar --- ya los puse 

//3 Tienes que poner en el login in boton trasnparente que abarque todas la pantalla el cual al hacer click fuera del teclado o de los uitextfield se quite el teclado automáticamiente, el código para quitar el teclado es : "uitexfield_tu_campo.resingfieldresponder"

//4 Tienes que poner en el teclado en el boton inferior derecho que cuando estes en el uitexfield_Usuario te aparezca siguiente y en el de contraseña ir, esos los cambias en las propiedades del uitexfield, si seleccionas siguiente te debe activar el uitexfield_contrasenia, si seleccionas el boton de ir en el teclado primero debes de checar que tanto el uitexfield_usuario y uitexfield_contrasenia no esten vacíos, si es así debes de mostrar un mensaje que te diga debes de ingresar contraseña y/o usuario para poder iniciar sesión o algo asi, si los dos campos son válidos debes de iniciar ya con la petición http 

//5 Aun no has incoropoado a este proyecto la librería de swift ni has puesto el "NombreProyecto-Bridging-Header.h" ahi es donde pones #import "nombre_libreria_en_objective_c.h"

//6 En todos lados tienes que ocupar autolayouts, acuérdate que para los autolayouts son alineación en x,y, width y height

//7 Cualquier duda que tengas xfa dime, en la noche

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

