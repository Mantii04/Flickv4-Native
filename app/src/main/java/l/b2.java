package l;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b2 extends ContextWrapper {

    /* renamed from: c, reason: collision with root package name */
    public static final Object f17857c = new Object();

    /* renamed from: d, reason: collision with root package name */
    public static ArrayList f17858d;

    /* renamed from: a, reason: collision with root package name */
    public final E1 f17859a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources.Theme f17860b;

    public b2(Context context) {
        super(context);
        if (!x2.shouldBeUsed()) {
            this.f17859a = new d2(this, context.getResources());
            this.f17860b = null;
            return;
        }
        x2 x2Var = new x2(this, context.getResources());
        this.f17859a = x2Var;
        Resources.Theme newTheme = x2Var.newTheme();
        this.f17860b = newTheme;
        newTheme.setTo(context.getTheme());
    }

    public static Context wrap(Context context) {
        if ((context instanceof b2) || (context.getResources() instanceof d2) || (context.getResources() instanceof x2) || !x2.shouldBeUsed()) {
            return context;
        }
        synchronized (f17857c) {
            try {
                ArrayList arrayList = f17858d;
                if (arrayList == null) {
                    f17858d = new ArrayList();
                } else {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        WeakReference weakReference = (WeakReference) f17858d.get(size);
                        if (weakReference == null || weakReference.get() == null) {
                            f17858d.remove(size);
                        }
                    }
                    for (int size2 = f17858d.size() - 1; size2 >= 0; size2--) {
                        WeakReference weakReference2 = (WeakReference) f17858d.get(size2);
                        b2 b2Var = weakReference2 != null ? (b2) weakReference2.get() : null;
                        if (b2Var != null && b2Var.getBaseContext() == context) {
                            return b2Var;
                        }
                    }
                }
                b2 b2Var2 = new b2(context);
                f17858d.add(new WeakReference(b2Var2));
                return b2Var2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f17859a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f17859a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f17860b;
        return theme == null ? super.getTheme() : theme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i2) {
        Resources.Theme theme = this.f17860b;
        if (theme == null) {
            super.setTheme(i2);
        } else {
            theme.applyStyle(i2, true);
        }
    }
}
