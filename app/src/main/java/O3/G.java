package O3;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import com.google.android.youtube.player.internal.w$a;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public abstract class G {
    public static InterfaceC0210i a(Activity activity, IBinder iBinder, boolean z6) throws w$a {
        AbstractC0203b.a(activity);
        AbstractC0203b.a(iBinder);
        Context b7 = J.b(activity);
        if (b7 == null) {
            throw new w$a("Could not create remote context");
        }
        ClassLoader classLoader = b7.getClassLoader();
        try {
            return AbstractBinderC0209h.a(b(classLoader.loadClass("com.google.android.youtube.api.jar.client.RemoteEmbeddedPlayer"), F.a(b7).asBinder(), F.a(activity).asBinder(), iBinder, z6));
        } catch (ClassNotFoundException e3) {
            throw new w$a("Unable to find dynamic class ".concat("com.google.android.youtube.api.jar.client.RemoteEmbeddedPlayer"), e3);
        }
    }

    public static IBinder b(Class cls, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, boolean z6) {
        try {
            return (IBinder) cls.getConstructor(IBinder.class, IBinder.class, IBinder.class, Boolean.TYPE).newInstance(iBinder, iBinder2, iBinder3, Boolean.valueOf(z6));
        } catch (IllegalAccessException e3) {
            String name = cls.getName();
            throw new w$a(name.length() != 0 ? "Unable to call the default constructor of ".concat(name) : new String("Unable to call the default constructor of "), e3);
        } catch (InstantiationException e7) {
            String name2 = cls.getName();
            throw new w$a(name2.length() != 0 ? "Unable to instantiate the dynamic class ".concat(name2) : new String("Unable to instantiate the dynamic class "), e7);
        } catch (NoSuchMethodException e8) {
            String name3 = cls.getName();
            throw new w$a(name3.length() != 0 ? "Could not find the right constructor for ".concat(name3) : new String("Could not find the right constructor for "), e8);
        } catch (InvocationTargetException e9) {
            String name4 = cls.getName();
            throw new w$a(name4.length() != 0 ? "Exception thrown by invoked constructor in ".concat(name4) : new String("Exception thrown by invoked constructor in "), e9);
        }
    }
}
