package androidx.fragment.app;

import android.util.Log;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;

/* renamed from: androidx.fragment.app.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0450a extends v0 implements InterfaceC0463g0 {

    /* renamed from: p, reason: collision with root package name */
    public final AbstractC0467i0 f6172p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f6173q;

    /* renamed from: r, reason: collision with root package name */
    public int f6174r;

    public C0450a(AbstractC0467i0 abstractC0467i0) {
        abstractC0467i0.getFragmentFactory();
        if (abstractC0467i0.getHost() != null) {
            abstractC0467i0.getHost().f6150e.getClassLoader();
        }
        this.f6333a = new ArrayList();
        this.f6347o = false;
        this.f6174r = -1;
        this.f6172p = abstractC0467i0;
    }

    @Override // androidx.fragment.app.v0
    public final void b(int i2, C c7, String str, int i7) {
        String str2 = c7.f6074W;
        if (str2 != null) {
            g0.d.onFragmentReuse(c7, str2);
        }
        Class<?> cls = c7.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str3 = c7.f6059H;
            if (str3 != null && !str.equals(str3)) {
                throw new IllegalStateException("Can't change tag of fragment " + c7 + ": was " + c7.f6059H + " now " + str);
            }
            c7.f6059H = str;
        }
        if (i2 != 0) {
            if (i2 == -1) {
                throw new IllegalArgumentException("Can't add fragment " + c7 + " with tag " + str + " to container view with no id");
            }
            int i8 = c7.f6057F;
            if (i8 != 0 && i8 != i2) {
                throw new IllegalStateException("Can't change container ID of fragment " + c7 + ": was " + c7.f6057F + " now " + i2);
            }
            c7.f6057F = i2;
            c7.f6058G = i2;
        }
        a(new u0(i7, c7));
        c7.f6053B = this.f6172p;
    }

    public final void c(int i2) {
        if (this.f6339g) {
            if (AbstractC0467i0.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i2);
            }
            ArrayList arrayList = this.f6333a;
            int size = arrayList.size();
            for (int i7 = 0; i7 < size; i7++) {
                u0 u0Var = (u0) arrayList.get(i7);
                C c7 = u0Var.f6324b;
                if (c7 != null) {
                    c7.f6052A += i2;
                    if (AbstractC0467i0.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + u0Var.f6324b + " to " + u0Var.f6324b.f6052A);
                    }
                }
            }
        }
    }

    @Override // androidx.fragment.app.v0
    public int commit() {
        return d(false);
    }

    @Override // androidx.fragment.app.v0
    public int commitAllowingStateLoss() {
        return d(true);
    }

    @Override // androidx.fragment.app.v0
    public void commitNowAllowingStateLoss() {
        disallowAddToBackStack();
        AbstractC0467i0 abstractC0467i0 = this.f6172p;
        if (abstractC0467i0.f6241t == null || abstractC0467i0.f6215G) {
            return;
        }
        abstractC0467i0.v(true);
        if (generateOps(abstractC0467i0.f6217I, abstractC0467i0.f6218J)) {
            abstractC0467i0.f6223b = true;
            try {
                abstractC0467i0.I(abstractC0467i0.f6217I, abstractC0467i0.f6218J);
            } finally {
                abstractC0467i0.d();
            }
        }
        abstractC0467i0.S();
        boolean z6 = abstractC0467i0.f6216H;
        t0 t0Var = abstractC0467i0.f6224c;
        if (z6) {
            abstractC0467i0.f6216H = false;
            Iterator it = t0Var.d().iterator();
            while (it.hasNext()) {
                s0 s0Var = (s0) it.next();
                C c7 = s0Var.f6304c;
                if (c7.f6069R) {
                    if (abstractC0467i0.f6223b) {
                        abstractC0467i0.f6216H = true;
                    } else {
                        c7.f6069R = false;
                        s0Var.k();
                    }
                }
            }
        }
        ((HashMap) t0Var.f6319b).values().removeAll(Collections.singleton(null));
    }

    public final int d(boolean z6) {
        if (this.f6173q) {
            throw new IllegalStateException("commit already called");
        }
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new G0());
            dump("  ", printWriter);
            printWriter.close();
        }
        this.f6173q = true;
        boolean z7 = this.f6339g;
        AbstractC0467i0 abstractC0467i0 = this.f6172p;
        if (z7) {
            this.f6174r = abstractC0467i0.f6230i.getAndIncrement();
        } else {
            this.f6174r = -1;
        }
        abstractC0467i0.u(this, z6);
        return this.f6174r;
    }

    public void dump(String str, PrintWriter printWriter) {
        dump(str, printWriter, true);
    }

    @Override // androidx.fragment.app.InterfaceC0463g0
    public boolean generateOps(ArrayList<C0450a> arrayList, ArrayList<Boolean> arrayList2) {
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f6339g) {
            return true;
        }
        AbstractC0467i0 abstractC0467i0 = this.f6172p;
        if (abstractC0467i0.f6225d == null) {
            abstractC0467i0.f6225d = new ArrayList();
        }
        abstractC0467i0.f6225d.add(this);
        return true;
    }

    @Override // androidx.fragment.app.v0
    public v0 remove(C c7) {
        AbstractC0467i0 abstractC0467i0 = c7.f6053B;
        if (abstractC0467i0 == null || abstractC0467i0 == this.f6172p) {
            return super.remove(c7);
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + c7.toString() + " is already attached to a FragmentManager.");
    }

    public void runOnCommitRunnables() {
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f6174r >= 0) {
            sb.append(" #");
            sb.append(this.f6174r);
        }
        if (this.f6340h != null) {
            sb.append(StringUtils.SPACE);
            sb.append(this.f6340h);
        }
        sb.append("}");
        return sb.toString();
    }

    public void dump(String str, PrintWriter printWriter, boolean z6) {
        String str2;
        if (z6) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f6340h);
            printWriter.print(" mIndex=");
            printWriter.print(this.f6174r);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f6173q);
            if (this.f6338f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f6338f));
            }
            if (this.f6334b != 0 || this.f6335c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f6334b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f6335c));
            }
            if (this.f6336d != 0 || this.f6337e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f6336d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f6337e));
            }
            if (this.f6341i != 0 || this.f6342j != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f6341i));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f6342j);
            }
            if (this.f6343k != 0 || this.f6344l != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f6343k));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f6344l);
            }
        }
        ArrayList arrayList = this.f6333a;
        if (arrayList.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            u0 u0Var = (u0) arrayList.get(i2);
            switch (u0Var.f6323a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + u0Var.f6323a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i2);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(StringUtils.SPACE);
            printWriter.println(u0Var.f6324b);
            if (z6) {
                if (u0Var.f6326d != 0 || u0Var.f6327e != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(u0Var.f6326d));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(u0Var.f6327e));
                }
                if (u0Var.f6328f != 0 || u0Var.f6329g != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(u0Var.f6328f));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(u0Var.f6329g));
                }
            }
        }
    }
}
