package e;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.Toolbar;
import j.AbstractC1020c;
import j.InterfaceC1019b;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import l.x2;

/* renamed from: e.A, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0813A {

    /* renamed from: b, reason: collision with root package name */
    public static final h0 f13636b = new h0(new i0());

    /* renamed from: e, reason: collision with root package name */
    public static final int f13637e = -100;

    /* renamed from: f, reason: collision with root package name */
    public static I.o f13638f = null;

    /* renamed from: j, reason: collision with root package name */
    public static I.o f13639j = null;

    /* renamed from: m, reason: collision with root package name */
    public static Boolean f13640m = null;

    /* renamed from: n, reason: collision with root package name */
    public static boolean f13641n = false;

    /* renamed from: p, reason: collision with root package name */
    public static final p.i f13642p = new p.i();

    /* renamed from: q, reason: collision with root package name */
    public static final Object f13643q = new Object();

    /* renamed from: r, reason: collision with root package name */
    public static final Object f13644r = new Object();

    public static boolean a(Context context) {
        if (f13640m == null) {
            try {
                Bundle bundle = g0.getServiceInfo(context).metaData;
                if (bundle != null) {
                    f13640m = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                f13640m = Boolean.FALSE;
            }
        }
        return f13640m.booleanValue();
    }

    public static void b(a0 a0Var) {
        synchronized (f13643q) {
            try {
                Iterator<Object> it = f13642p.iterator();
                while (it.hasNext()) {
                    AbstractC0813A abstractC0813A = (AbstractC0813A) ((WeakReference) it.next()).get();
                    if (abstractC0813A == a0Var || abstractC0813A == null) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static AbstractC0813A create(Activity activity, InterfaceC0843w interfaceC0843w) {
        return new a0(activity, null, interfaceC0843w, activity);
    }

    public static I.o getApplicationLocales() {
        Object obj;
        Context contextForDelegate;
        if (I.b.isAtLeastT()) {
            Iterator<Object> it = f13642p.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                AbstractC0813A abstractC0813A = (AbstractC0813A) ((WeakReference) it.next()).get();
                if (abstractC0813A != null && (contextForDelegate = abstractC0813A.getContextForDelegate()) != null) {
                    obj = contextForDelegate.getSystemService("locale");
                    break;
                }
            }
            if (obj != null) {
                return I.o.wrap(AbstractC0846z.a(obj));
            }
        } else {
            I.o oVar = f13638f;
            if (oVar != null) {
                return oVar;
            }
        }
        return I.o.getEmptyLocaleList();
    }

    public static int getDefaultNightMode() {
        return f13637e;
    }

    public static void setCompatVectorFromResourcesEnabled(boolean z6) {
        x2.setCompatVectorFromResourcesEnabled(z6);
    }

    public abstract void addContentView(View view, ViewGroup.LayoutParams layoutParams);

    public Context attachBaseContext2(Context context) {
        attachBaseContext(context);
        return context;
    }

    public abstract <T extends View> T findViewById(int i2);

    public abstract Context getContextForDelegate();

    public abstract InterfaceC0825d getDrawerToggleDelegate();

    public abstract int getLocalNightMode();

    public abstract MenuInflater getMenuInflater();

    public abstract AbstractC0823b getSupportActionBar();

    public abstract void installViewFactory();

    public abstract void invalidateOptionsMenu();

    public abstract void onConfigurationChanged(Configuration configuration);

    public abstract void onCreate(Bundle bundle);

    public abstract void onDestroy();

    public abstract void onPostCreate(Bundle bundle);

    public abstract void onPostResume();

    public abstract void onSaveInstanceState(Bundle bundle);

    public abstract void onStart();

    public abstract void onStop();

    public abstract boolean requestWindowFeature(int i2);

    public abstract void setContentView(int i2);

    public abstract void setContentView(View view);

    public abstract void setContentView(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void setSupportActionBar(Toolbar toolbar);

    public abstract void setTheme(int i2);

    public abstract void setTitle(CharSequence charSequence);

    public abstract AbstractC1020c startSupportActionMode(InterfaceC1019b interfaceC1019b);

    public static AbstractC0813A create(Dialog dialog, InterfaceC0843w interfaceC0843w) {
        return new a0(dialog.getContext(), dialog.getWindow(), interfaceC0843w, dialog);
    }

    @Deprecated
    public void attachBaseContext(Context context) {
    }

    public void setOnBackInvokedDispatcher(OnBackInvokedDispatcher onBackInvokedDispatcher) {
    }
}
