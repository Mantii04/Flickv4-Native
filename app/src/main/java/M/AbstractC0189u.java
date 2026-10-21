package M;

import android.os.Build;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import androidx.core.R;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: M.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0189u {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f2073a = false;

    /* renamed from: b, reason: collision with root package name */
    public static Method f2074b = null;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f2075c = false;

    /* renamed from: d, reason: collision with root package name */
    public static Field f2076d;

    public static boolean dispatchBeforeHierarchy(View view, KeyEvent keyEvent) {
        ArrayList arrayList;
        int size;
        int indexOfKey;
        WeakHashMap weakHashMap = AbstractC0181p0.f2064a;
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList2 = C0179o0.f2059d;
        C0179o0 c0179o0 = (C0179o0) view.getTag(R.id.tag_unhandled_key_event_manager);
        WeakReference weakReference = null;
        if (c0179o0 == null) {
            c0179o0 = new C0179o0();
            c0179o0.f2060a = null;
            c0179o0.f2061b = null;
            c0179o0.f2062c = null;
            view.setTag(R.id.tag_unhandled_key_event_manager, c0179o0);
        }
        WeakReference weakReference2 = c0179o0.f2062c;
        if (weakReference2 != null && weakReference2.get() == keyEvent) {
            return false;
        }
        c0179o0.f2062c = new WeakReference(keyEvent);
        if (c0179o0.f2061b == null) {
            c0179o0.f2061b = new SparseArray();
        }
        SparseArray sparseArray = c0179o0.f2061b;
        if (keyEvent.getAction() == 1 && (indexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) >= 0) {
            weakReference = (WeakReference) sparseArray.valueAt(indexOfKey);
            sparseArray.removeAt(indexOfKey);
        }
        if (weakReference == null) {
            weakReference = (WeakReference) sparseArray.get(keyEvent.getKeyCode());
        }
        if (weakReference == null) {
            return false;
        }
        View view2 = (View) weakReference.get();
        if (view2 == null || !view2.isAttachedToWindow() || (arrayList = (ArrayList) view2.getTag(R.id.tag_unhandled_key_listeners)) == null || (size = arrayList.size() - 1) < 0) {
            return true;
        }
        arrayList.get(size).getClass();
        throw new ClassCastException();
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    @android.annotation.SuppressLint({"LambdaLast"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean dispatchKeyEvent(M.InterfaceC0187t r7, android.view.View r8, android.view.Window.Callback r9, android.view.KeyEvent r10) {
        /*
            r0 = 1
            r1 = 0
            if (r7 != 0) goto L6
            goto Le4
        L6:
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 28
            if (r2 < r3) goto L11
            boolean r7 = r7.superDispatchKeyEvent(r10)
            return r7
        L11:
            boolean r2 = r9 instanceof android.app.Activity
            r3 = 0
            if (r2 == 0) goto L82
            android.app.Activity r9 = (android.app.Activity) r9
            r9.onUserInteraction()
            android.view.Window r7 = r9.getWindow()
            r8 = 8
            boolean r8 = r7.hasFeature(r8)
            if (r8 == 0) goto L65
            android.app.ActionBar r8 = r9.getActionBar()
            int r2 = r10.getKeyCode()
            r4 = 82
            if (r2 != r4) goto L65
            if (r8 == 0) goto L65
            boolean r2 = M.AbstractC0189u.f2073a
            if (r2 != 0) goto L4d
            java.lang.Class r2 = r8.getClass()     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.String r4 = "onMenuKeyEvent"
            java.lang.Class[] r5 = new java.lang.Class[r0]     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.Class<android.view.KeyEvent> r6 = android.view.KeyEvent.class
            r5[r1] = r6     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.reflect.Method r2 = r2.getMethod(r4, r5)     // Catch: java.lang.NoSuchMethodException -> L4b
            M.AbstractC0189u.f2074b = r2     // Catch: java.lang.NoSuchMethodException -> L4b
        L4b:
            M.AbstractC0189u.f2073a = r0
        L4d:
            java.lang.reflect.Method r2 = M.AbstractC0189u.f2074b
            if (r2 == 0) goto L62
            java.lang.Object[] r4 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L62
            r4[r1] = r10     // Catch: java.lang.Throwable -> L62
            java.lang.Object r8 = r2.invoke(r8, r4)     // Catch: java.lang.Throwable -> L62
            if (r8 != 0) goto L5c
            goto L62
        L5c:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L62
            boolean r1 = r8.booleanValue()     // Catch: java.lang.Throwable -> L62
        L62:
            if (r1 == 0) goto L65
            goto L81
        L65:
            boolean r8 = r7.superDispatchKeyEvent(r10)
            if (r8 == 0) goto L6c
            goto L81
        L6c:
            android.view.View r7 = r7.getDecorView()
            boolean r8 = M.AbstractC0181p0.a(r7, r10)
            if (r8 == 0) goto L77
            goto L81
        L77:
            if (r7 == 0) goto L7d
            android.view.KeyEvent$DispatcherState r3 = r7.getKeyDispatcherState()
        L7d:
            boolean r0 = r10.dispatch(r9, r3, r9)
        L81:
            return r0
        L82:
            boolean r2 = r9 instanceof android.app.Dialog
            if (r2 == 0) goto Ld5
            android.app.Dialog r9 = (android.app.Dialog) r9
            boolean r7 = M.AbstractC0189u.f2075c
            if (r7 != 0) goto L9b
            java.lang.Class<android.app.Dialog> r7 = android.app.Dialog.class
            java.lang.String r8 = "mOnKeyListener"
            java.lang.reflect.Field r7 = r7.getDeclaredField(r8)     // Catch: java.lang.NoSuchFieldException -> L99
            M.AbstractC0189u.f2076d = r7     // Catch: java.lang.NoSuchFieldException -> L99
            r7.setAccessible(r0)     // Catch: java.lang.NoSuchFieldException -> L99
        L99:
            M.AbstractC0189u.f2075c = r0
        L9b:
            java.lang.reflect.Field r7 = M.AbstractC0189u.f2076d
            if (r7 == 0) goto La6
            java.lang.Object r7 = r7.get(r9)     // Catch: java.lang.IllegalAccessException -> La6
            android.content.DialogInterface$OnKeyListener r7 = (android.content.DialogInterface.OnKeyListener) r7     // Catch: java.lang.IllegalAccessException -> La6
            goto La7
        La6:
            r7 = r3
        La7:
            if (r7 == 0) goto Lb4
            int r8 = r10.getKeyCode()
            boolean r7 = r7.onKey(r9, r8, r10)
            if (r7 == 0) goto Lb4
            goto Ld4
        Lb4:
            android.view.Window r7 = r9.getWindow()
            boolean r8 = r7.superDispatchKeyEvent(r10)
            if (r8 == 0) goto Lbf
            goto Ld4
        Lbf:
            android.view.View r7 = r7.getDecorView()
            boolean r8 = M.AbstractC0181p0.a(r7, r10)
            if (r8 == 0) goto Lca
            goto Ld4
        Lca:
            if (r7 == 0) goto Ld0
            android.view.KeyEvent$DispatcherState r3 = r7.getKeyDispatcherState()
        Ld0:
            boolean r0 = r10.dispatch(r9, r3, r9)
        Ld4:
            return r0
        Ld5:
            if (r8 == 0) goto Ldd
            boolean r8 = M.AbstractC0181p0.a(r8, r10)
            if (r8 != 0) goto Le3
        Ldd:
            boolean r7 = r7.superDispatchKeyEvent(r10)
            if (r7 == 0) goto Le4
        Le3:
            return r0
        Le4:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: M.AbstractC0189u.dispatchKeyEvent(M.t, android.view.View, android.view.Window$Callback, android.view.KeyEvent):boolean");
    }
}
