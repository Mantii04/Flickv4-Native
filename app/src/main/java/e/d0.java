package e;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class d0 implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final View f13746b;

    /* renamed from: e, reason: collision with root package name */
    public final String f13747e;

    /* renamed from: f, reason: collision with root package name */
    public Method f13748f;

    /* renamed from: j, reason: collision with root package name */
    public Context f13749j;

    public d0(View view, String str) {
        this.f13746b = view;
        this.f13747e = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        Method method;
        if (this.f13748f == null) {
            View view2 = this.f13746b;
            Context context = view2.getContext();
            while (true) {
                String str2 = this.f13747e;
                if (context == null) {
                    int id = view2.getId();
                    if (id == -1) {
                        str = "";
                    } else {
                        str = " with id '" + view2.getContext().getResources().getResourceEntryName(id) + "'";
                    }
                    StringBuilder t6 = A.i.t("Could not find method ", str2, "(View) in a parent or ancestor Context for android:onClick attribute defined on view ");
                    t6.append(view2.getClass());
                    t6.append(str);
                    throw new IllegalStateException(t6.toString());
                }
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(str2, View.class)) != null) {
                        this.f13748f = method;
                        this.f13749j = context;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
        }
        try {
            this.f13748f.invoke(this.f13749j, view);
        } catch (IllegalAccessException e3) {
            throw new IllegalStateException("Could not execute non-public method for android:onClick", e3);
        } catch (InvocationTargetException e7) {
            throw new IllegalStateException("Could not execute method for android:onClick", e7);
        }
    }
}
