package C;

import android.content.Context;
import android.os.Handler;
import android.text.Editable;
import android.text.Selection;
import android.view.KeyEvent;
import android.view.View;
import androidx.emoji2.text.C0449h;
import androidx.fragment.app.AbstractC0467i0;
import androidx.fragment.app.C;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import m1.Q0;
import m1.R0;
import p2.C1494e;

/* loaded from: classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    public Object f325a;

    /* renamed from: b, reason: collision with root package name */
    public Object f326b;

    public /* synthetic */ k(Object obj, Object obj2) {
        this.f325a = obj;
        this.f326b = obj2;
    }

    public static boolean a(Editable editable, KeyEvent keyEvent, boolean z6) {
        androidx.emoji2.text.w[] wVarArr;
        if (KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (wVarArr = (androidx.emoji2.text.w[]) editable.getSpans(selectionStart, selectionEnd, androidx.emoji2.text.w.class)) != null && wVarArr.length > 0) {
                for (androidx.emoji2.text.w wVar : wVarArr) {
                    int spanStart = editable.getSpanStart(wVar);
                    int spanEnd = editable.getSpanEnd(wVar);
                    if ((z6 && spanStart == selectionStart) || ((!z6 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                        editable.delete(spanStart, spanEnd);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public void b(boolean z6) {
        C c7 = ((AbstractC0467i0) this.f326b).f6243v;
        if (c7 != null) {
            c7.getParentFragmentManager().f6233l.b(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f325a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z6) {
                throw null;
            }
            throw null;
        }
    }

    public void c(boolean z6) {
        AbstractC0467i0 abstractC0467i0 = (AbstractC0467i0) this.f326b;
        Context context = abstractC0467i0.getHost().f6150e;
        C c7 = abstractC0467i0.f6243v;
        if (c7 != null) {
            c7.getParentFragmentManager().f6233l.c(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f325a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z6) {
                throw null;
            }
            throw null;
        }
    }

    public void d(boolean z6) {
        C c7 = ((AbstractC0467i0) this.f326b).f6243v;
        if (c7 != null) {
            c7.getParentFragmentManager().f6233l.d(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f325a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z6) {
                throw null;
            }
            throw null;
        }
    }

    public void e(boolean z6) {
        C c7 = ((AbstractC0467i0) this.f326b).f6243v;
        if (c7 != null) {
            c7.getParentFragmentManager().f6233l.e(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f325a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z6) {
                throw null;
            }
            throw null;
        }
    }

    public void f(boolean z6) {
        C c7 = ((AbstractC0467i0) this.f326b).f6243v;
        if (c7 != null) {
            c7.getParentFragmentManager().f6233l.f(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f325a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z6) {
                throw null;
            }
            throw null;
        }
    }

    public void g(boolean z6) {
        C c7 = ((AbstractC0467i0) this.f326b).f6243v;
        if (c7 != null) {
            c7.getParentFragmentManager().f6233l.g(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f325a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z6) {
                throw null;
            }
            throw null;
        }
    }

    public void h(boolean z6) {
        AbstractC0467i0 abstractC0467i0 = (AbstractC0467i0) this.f326b;
        Context context = abstractC0467i0.getHost().f6150e;
        C c7 = abstractC0467i0.f6243v;
        if (c7 != null) {
            c7.getParentFragmentManager().f6233l.h(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f325a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z6) {
                throw null;
            }
            throw null;
        }
    }

    public void i(boolean z6) {
        C c7 = ((AbstractC0467i0) this.f326b).f6243v;
        if (c7 != null) {
            c7.getParentFragmentManager().f6233l.i(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f325a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z6) {
                throw null;
            }
            throw null;
        }
    }

    public void j(boolean z6) {
        C c7 = ((AbstractC0467i0) this.f326b).f6243v;
        if (c7 != null) {
            c7.getParentFragmentManager().f6233l.j(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f325a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z6) {
                throw null;
            }
            throw null;
        }
    }

    public void k(boolean z6) {
        C c7 = ((AbstractC0467i0) this.f326b).f6243v;
        if (c7 != null) {
            c7.getParentFragmentManager().f6233l.k(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f325a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z6) {
                throw null;
            }
            throw null;
        }
    }

    public void l(boolean z6) {
        C c7 = ((AbstractC0467i0) this.f326b).f6243v;
        if (c7 != null) {
            c7.getParentFragmentManager().f6233l.l(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f325a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z6) {
                throw null;
            }
            throw null;
        }
    }

    public void m(boolean z6) {
        C c7 = ((AbstractC0467i0) this.f326b).f6243v;
        if (c7 != null) {
            c7.getParentFragmentManager().f6233l.m(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f325a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z6) {
                throw null;
            }
            throw null;
        }
    }

    public void n(boolean z6) {
        C c7 = ((AbstractC0467i0) this.f326b).f6243v;
        if (c7 != null) {
            c7.getParentFragmentManager().f6233l.n(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f325a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z6) {
                throw null;
            }
            throw null;
        }
    }

    public void o(boolean z6) {
        C c7 = ((AbstractC0467i0) this.f326b).f6243v;
        if (c7 != null) {
            c7.getParentFragmentManager().f6233l.o(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f325a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z6) {
                throw null;
            }
            throw null;
        }
    }

    public View p(int i2, int i7, int i8, int i9) {
        R0 r02 = (R0) this.f325a;
        int parentStart = r02.getParentStart();
        int parentEnd = r02.getParentEnd();
        int i10 = i7 > i2 ? 1 : -1;
        View view = null;
        while (i2 != i7) {
            View childAt = r02.getChildAt(i2);
            int childStart = r02.getChildStart(childAt);
            int childEnd = r02.getChildEnd(childAt);
            Q0 q02 = (Q0) this.f326b;
            q02.f18326b = parentStart;
            q02.f18327c = parentEnd;
            q02.f18328d = childStart;
            q02.f18329e = childEnd;
            if (i8 != 0) {
                q02.f18325a = i8;
                if (q02.a()) {
                    return childAt;
                }
            }
            if (i9 != 0) {
                q02.f18325a = i9;
                if (q02.a()) {
                    view = childAt;
                }
            }
            i2 += i10;
        }
        return view;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T2.e q(java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: C.k.q(java.lang.String):T2.e");
    }

    public boolean r(CharSequence charSequence, int i2, int i7, androidx.emoji2.text.u uVar) {
        if (uVar.getHasGlyph() == 0) {
            uVar.setHasGlyph(((C0449h) this.f326b).hasGlyph(charSequence, i2, i7, uVar.getSdkAdded()));
        }
        return uVar.getHasGlyph() == 2;
    }

    public boolean s(View view) {
        R0 r02 = (R0) this.f325a;
        int parentStart = r02.getParentStart();
        int parentEnd = r02.getParentEnd();
        int childStart = r02.getChildStart(view);
        int childEnd = r02.getChildEnd(view);
        Q0 q02 = (Q0) this.f326b;
        q02.f18326b = parentStart;
        q02.f18327c = parentEnd;
        q02.f18328d = childStart;
        q02.f18329e = childEnd;
        q02.f18325a = 24579;
        return q02.a();
    }

    public void t(J.n nVar) {
        int i2 = nVar.f1416b;
        Handler handler = (Handler) this.f326b;
        J.r rVar = (J.r) this.f325a;
        if (i2 == 0) {
            handler.post(new J.a(rVar, nVar.f1415a));
        } else {
            handler.post(new J.b(rVar, i2));
        }
    }

    public void u(String str) {
        C1494e c1494e;
        synchronized (this) {
            try {
                c1494e = (C1494e) G2.r.checkNotNull(((HashMap) this.f325a).get(str));
                int i2 = c1494e.f19452b;
                if (i2 < 1) {
                    throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + c1494e.f19452b);
                }
                int i7 = i2 - 1;
                c1494e.f19452b = i7;
                if (i7 == 0) {
                    C1494e c1494e2 = (C1494e) ((HashMap) this.f325a).remove(str);
                    if (!c1494e2.equals(c1494e)) {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + c1494e + ", but actually removed: " + c1494e2 + ", safeKey: " + str);
                    }
                    ((L0.f) this.f326b).b(c1494e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        c1494e.f19451a.unlock();
    }

    public k(int i2) {
        switch (i2) {
            case 12:
                this.f325a = new HashMap();
                this.f326b = new L0.f(4);
                break;
            default:
                this.f325a = new HashMap();
                this.f326b = new HashMap();
                break;
        }
    }

    public k(R0 r02) {
        this.f325a = r02;
        Q0 q02 = new Q0();
        q02.f18325a = 0;
        this.f326b = q02;
    }
}
