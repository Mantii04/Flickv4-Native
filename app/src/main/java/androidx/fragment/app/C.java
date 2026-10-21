package androidx.fragment.app;

import M.AbstractC0191v;
import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.lifecycle.AbstractC0557o;
import androidx.lifecycle.C0564w;
import androidx.lifecycle.InterfaceC0552j;
import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.SavedStateHandleSupport;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import n0.AbstractC1353a;

/* loaded from: classes.dex */
public abstract class C implements ComponentCallbacks, View.OnCreateContextMenuListener, InterfaceC0561t, androidx.lifecycle.j0, InterfaceC0552j, q1.j {

    /* renamed from: e0, reason: collision with root package name */
    public static final Object f6051e0 = new Object();

    /* renamed from: A, reason: collision with root package name */
    public int f6052A;

    /* renamed from: B, reason: collision with root package name */
    public AbstractC0467i0 f6053B;

    /* renamed from: C, reason: collision with root package name */
    public P f6054C;

    /* renamed from: E, reason: collision with root package name */
    public C f6056E;

    /* renamed from: F, reason: collision with root package name */
    public int f6057F;

    /* renamed from: G, reason: collision with root package name */
    public int f6058G;

    /* renamed from: H, reason: collision with root package name */
    public String f6059H;

    /* renamed from: I, reason: collision with root package name */
    public boolean f6060I;

    /* renamed from: J, reason: collision with root package name */
    public boolean f6061J;

    /* renamed from: K, reason: collision with root package name */
    public boolean f6062K;

    /* renamed from: L, reason: collision with root package name */
    public boolean f6063L;

    /* renamed from: M, reason: collision with root package name */
    public boolean f6064M;

    /* renamed from: O, reason: collision with root package name */
    public boolean f6066O;

    /* renamed from: P, reason: collision with root package name */
    public ViewGroup f6067P;

    /* renamed from: Q, reason: collision with root package name */
    public View f6068Q;

    /* renamed from: R, reason: collision with root package name */
    public boolean f6069R;

    /* renamed from: T, reason: collision with root package name */
    public B f6071T;

    /* renamed from: U, reason: collision with root package name */
    public boolean f6072U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f6073V;

    /* renamed from: W, reason: collision with root package name */
    public String f6074W;

    /* renamed from: Y, reason: collision with root package name */
    public C0564w f6076Y;

    /* renamed from: Z, reason: collision with root package name */
    public F0 f6077Z;

    /* renamed from: b0, reason: collision with root package name */
    public q1.i f6080b0;

    /* renamed from: c0, reason: collision with root package name */
    public final ArrayList f6081c0;

    /* renamed from: d0, reason: collision with root package name */
    public final C0487z f6082d0;

    /* renamed from: e, reason: collision with root package name */
    public Bundle f6083e;

    /* renamed from: f, reason: collision with root package name */
    public SparseArray f6084f;

    /* renamed from: j, reason: collision with root package name */
    public Bundle f6085j;

    /* renamed from: m, reason: collision with root package name */
    public Boolean f6086m;

    /* renamed from: p, reason: collision with root package name */
    public Bundle f6088p;

    /* renamed from: q, reason: collision with root package name */
    public C f6089q;

    /* renamed from: s, reason: collision with root package name */
    public int f6091s;

    /* renamed from: u, reason: collision with root package name */
    public boolean f6093u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f6094v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f6095w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f6096x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f6097y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f6098z;

    /* renamed from: b, reason: collision with root package name */
    public int f6079b = -1;

    /* renamed from: n, reason: collision with root package name */
    public String f6087n = UUID.randomUUID().toString();

    /* renamed from: r, reason: collision with root package name */
    public String f6090r = null;

    /* renamed from: t, reason: collision with root package name */
    public Boolean f6092t = null;

    /* renamed from: D, reason: collision with root package name */
    public C0469j0 f6055D = new C0469j0();

    /* renamed from: N, reason: collision with root package name */
    public boolean f6065N = true;

    /* renamed from: S, reason: collision with root package name */
    public boolean f6070S = true;

    /* renamed from: X, reason: collision with root package name */
    public Lifecycle$State f6075X = Lifecycle$State.f6971m;

    /* renamed from: a0, reason: collision with root package name */
    public final androidx.lifecycle.E f6078a0 = new androidx.lifecycle.E();

    public C() {
        new AtomicInteger();
        this.f6081c0 = new ArrayList();
        this.f6082d0 = new C0487z(this);
        d();
    }

    @Deprecated
    public static C instantiate(Context context, String str, Bundle bundle) {
        try {
            C newInstance = O.loadFragmentClass(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle == null) {
                return newInstance;
            }
            bundle.setClassLoader(newInstance.getClass().getClassLoader());
            newInstance.setArguments(bundle);
            return newInstance;
        } catch (IllegalAccessException e3) {
            throw new Fragment$InstantiationException(A.i.l("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e3);
        } catch (InstantiationException e7) {
            throw new Fragment$InstantiationException(A.i.l("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e7);
        } catch (NoSuchMethodException e8) {
            throw new Fragment$InstantiationException(A.i.l("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e8);
        } catch (InvocationTargetException e9) {
            throw new Fragment$InstantiationException(A.i.l("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e9);
        }
    }

    public L a() {
        return new A(this);
    }

    public final B b() {
        if (this.f6071T == null) {
            B b7 = new B();
            Object obj = f6051e0;
            b7.f6045i = obj;
            b7.f6046j = obj;
            b7.f6047k = obj;
            b7.f6048l = 1.0f;
            b7.f6049m = null;
            this.f6071T = b7;
        }
        return this.f6071T;
    }

    public final int c() {
        Lifecycle$State lifecycle$State = this.f6075X;
        return (lifecycle$State == Lifecycle$State.f6968e || this.f6056E == null) ? lifecycle$State.ordinal() : Math.min(lifecycle$State.ordinal(), this.f6056E.c());
    }

    public final void d() {
        this.f6076Y = new C0564w(this);
        this.f6080b0 = q1.i.create(this);
        ArrayList arrayList = this.f6081c0;
        C0487z c0487z = this.f6082d0;
        if (arrayList.contains(c0487z)) {
            return;
        }
        if (this.f6079b < 0) {
            arrayList.add(c0487z);
            return;
        }
        C c7 = c0487z.f6372a;
        c7.f6080b0.performAttach();
        SavedStateHandleSupport.enableSavedStateHandles(c7);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2;
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.f6057F));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.f6058G));
        printWriter.print(" mTag=");
        printWriter.println(this.f6059H);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.f6079b);
        printWriter.print(" mWho=");
        printWriter.print(this.f6087n);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.f6052A);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.f6093u);
        printWriter.print(" mRemoving=");
        printWriter.print(this.f6094v);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.f6095w);
        printWriter.print(" mInLayout=");
        printWriter.println(this.f6096x);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.f6060I);
        printWriter.print(" mDetached=");
        printWriter.print(this.f6061J);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.f6065N);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.f6064M);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.f6062K);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.f6070S);
        if (this.f6053B != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.f6053B);
        }
        if (this.f6054C != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.f6054C);
        }
        if (this.f6056E != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.f6056E);
        }
        if (this.f6088p != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.f6088p);
        }
        if (this.f6083e != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.f6083e);
        }
        if (this.f6084f != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.f6084f);
        }
        if (this.f6085j != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.f6085j);
        }
        C c7 = this.f6089q;
        if (c7 == null) {
            AbstractC0467i0 abstractC0467i0 = this.f6053B;
            c7 = (abstractC0467i0 == null || (str2 = this.f6090r) == null) ? null : abstractC0467i0.f6224c.b(str2);
        }
        if (c7 != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(c7);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.f6091s);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        B b7 = this.f6071T;
        printWriter.println(b7 == null ? false : b7.f6037a);
        B b8 = this.f6071T;
        if ((b8 == null ? 0 : b8.f6038b) != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            B b9 = this.f6071T;
            printWriter.println(b9 == null ? 0 : b9.f6038b);
        }
        B b10 = this.f6071T;
        if ((b10 == null ? 0 : b10.f6039c) != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            B b11 = this.f6071T;
            printWriter.println(b11 == null ? 0 : b11.f6039c);
        }
        B b12 = this.f6071T;
        if ((b12 == null ? 0 : b12.f6040d) != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            B b13 = this.f6071T;
            printWriter.println(b13 == null ? 0 : b13.f6040d);
        }
        B b14 = this.f6071T;
        if ((b14 == null ? 0 : b14.f6041e) != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            B b15 = this.f6071T;
            printWriter.println(b15 != null ? b15.f6041e : 0);
        }
        if (this.f6067P != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.f6067P);
        }
        if (this.f6068Q != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.f6068Q);
        }
        if (getContext() != null) {
            AbstractC1353a.getInstance(this).dump(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.f6055D + ":");
        this.f6055D.dump(A.i.B(str, "  "), fileDescriptor, printWriter, strArr);
    }

    public final void e() {
        d();
        this.f6074W = this.f6087n;
        this.f6087n = UUID.randomUUID().toString();
        this.f6093u = false;
        this.f6094v = false;
        this.f6095w = false;
        this.f6096x = false;
        this.f6097y = false;
        this.f6052A = 0;
        this.f6053B = null;
        this.f6055D = new C0469j0();
        this.f6054C = null;
        this.f6057F = 0;
        this.f6058G = 0;
        this.f6059H = null;
        this.f6060I = false;
        this.f6061J = false;
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final boolean f() {
        return this.f6052A > 0;
    }

    public void g(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f6055D.F();
        this.f6098z = true;
        this.f6077Z = new F0(this, getViewModelStore());
        View onCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.f6068Q = onCreateView;
        if (onCreateView == null) {
            if (this.f6077Z.f6111f != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.f6077Z = null;
        } else {
            this.f6077Z.b();
            androidx.lifecycle.k0.set(this.f6068Q, this.f6077Z);
            androidx.lifecycle.l0.set(this.f6068Q, this.f6077Z);
            androidx.savedstate.a.set(this.f6068Q, this.f6077Z);
            this.f6078a0.setValue(this.f6077Z);
        }
    }

    public final H getActivity() {
        P p6 = this.f6054C;
        if (p6 == null) {
            return null;
        }
        return p6.f6149b;
    }

    public boolean getAllowEnterTransitionOverlap() {
        B b7 = this.f6071T;
        if (b7 == null) {
            return true;
        }
        b7.getClass();
        return true;
    }

    public boolean getAllowReturnTransitionOverlap() {
        B b7 = this.f6071T;
        if (b7 == null) {
            return true;
        }
        b7.getClass();
        return true;
    }

    public final Bundle getArguments() {
        return this.f6088p;
    }

    public final AbstractC0467i0 getChildFragmentManager() {
        if (this.f6054C != null) {
            return this.f6055D;
        }
        throw new IllegalStateException(A.i.j("Fragment ", this, " has not been attached yet."));
    }

    public Context getContext() {
        P p6 = this.f6054C;
        if (p6 == null) {
            return null;
        }
        return p6.f6150e;
    }

    @Override // androidx.lifecycle.InterfaceC0552j
    public m0.c getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext = requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        if (application == null && AbstractC0467i0.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
        }
        m0.f fVar = new m0.f();
        if (application != null) {
            fVar.set(androidx.lifecycle.a0.f7024g, application);
        }
        fVar.set(SavedStateHandleSupport.f6994a, this);
        fVar.set(SavedStateHandleSupport.f6995b, this);
        if (getArguments() != null) {
            fVar.set(SavedStateHandleSupport.f6996c, getArguments());
        }
        return fVar;
    }

    public Object getEnterTransition() {
        B b7 = this.f6071T;
        if (b7 == null) {
            return null;
        }
        b7.getClass();
        return null;
    }

    public Object getExitTransition() {
        B b7 = this.f6071T;
        if (b7 == null) {
            return null;
        }
        b7.getClass();
        return null;
    }

    public final Object getHost() {
        P p6 = this.f6054C;
        if (p6 == null) {
            return null;
        }
        return p6.onGetHost();
    }

    public final int getId() {
        return this.f6057F;
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        P p6 = this.f6054C;
        if (p6 == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        LayoutInflater onGetLayoutInflater = p6.onGetLayoutInflater();
        AbstractC0191v.setFactory2(onGetLayoutInflater, this.f6055D.f6227f);
        return onGetLayoutInflater;
    }

    @Override // androidx.lifecycle.InterfaceC0561t
    public AbstractC0557o getLifecycle() {
        return this.f6076Y;
    }

    public final C getParentFragment() {
        return this.f6056E;
    }

    public final AbstractC0467i0 getParentFragmentManager() {
        AbstractC0467i0 abstractC0467i0 = this.f6053B;
        if (abstractC0467i0 != null) {
            return abstractC0467i0;
        }
        throw new IllegalStateException(A.i.j("Fragment ", this, " not associated with a fragment manager."));
    }

    public Object getReenterTransition() {
        B b7 = this.f6071T;
        if (b7 == null) {
            return null;
        }
        b7.getClass();
        return getExitTransition();
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Deprecated
    public final boolean getRetainInstance() {
        g0.d.onGetRetainInstanceUsage(this);
        return this.f6062K;
    }

    public Object getReturnTransition() {
        B b7 = this.f6071T;
        if (b7 == null) {
            return null;
        }
        b7.getClass();
        return getEnterTransition();
    }

    @Override // q1.j
    public final q1.g getSavedStateRegistry() {
        return this.f6080b0.getSavedStateRegistry();
    }

    public Object getSharedElementEnterTransition() {
        B b7 = this.f6071T;
        if (b7 == null) {
            return null;
        }
        b7.getClass();
        return null;
    }

    public Object getSharedElementReturnTransition() {
        B b7 = this.f6071T;
        if (b7 == null) {
            return null;
        }
        b7.getClass();
        return getSharedElementEnterTransition();
    }

    public final String getString(int i2) {
        return getResources().getString(i2);
    }

    public final String getTag() {
        return this.f6059H;
    }

    @Deprecated
    public final C getTargetFragment() {
        String str;
        g0.d.onGetTargetFragmentUsage(this);
        C c7 = this.f6089q;
        if (c7 != null) {
            return c7;
        }
        AbstractC0467i0 abstractC0467i0 = this.f6053B;
        if (abstractC0467i0 == null || (str = this.f6090r) == null) {
            return null;
        }
        return abstractC0467i0.f6224c.b(str);
    }

    @Deprecated
    public final int getTargetRequestCode() {
        g0.d.onGetTargetFragmentRequestCodeUsage(this);
        return this.f6091s;
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.f6070S;
    }

    public View getView() {
        return this.f6068Q;
    }

    public androidx.lifecycle.C getViewLifecycleOwnerLiveData() {
        return this.f6078a0;
    }

    @Override // androidx.lifecycle.j0
    public androidx.lifecycle.i0 getViewModelStore() {
        if (this.f6053B == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (c() == 1) {
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        HashMap hashMap = this.f6053B.f6220L.f6274f;
        androidx.lifecycle.i0 i0Var = (androidx.lifecycle.i0) hashMap.get(this.f6087n);
        if (i0Var != null) {
            return i0Var;
        }
        androidx.lifecycle.i0 i0Var2 = new androidx.lifecycle.i0();
        hashMap.put(this.f6087n, i0Var2);
        return i0Var2;
    }

    public final void h(int i2, int i7, int i8, int i9) {
        if (this.f6071T == null && i2 == 0 && i7 == 0 && i8 == 0 && i9 == 0) {
            return;
        }
        b().f6038b = i2;
        b().f6039c = i7;
        b().f6040d = i8;
        b().f6041e = i9;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public final boolean isAdded() {
        return this.f6054C != null && this.f6093u;
    }

    public final boolean isDetached() {
        return this.f6061J;
    }

    public final boolean isHidden() {
        if (this.f6060I) {
            return true;
        }
        AbstractC0467i0 abstractC0467i0 = this.f6053B;
        if (abstractC0467i0 != null) {
            C c7 = this.f6056E;
            abstractC0467i0.getClass();
            if (c7 == null ? false : c7.isHidden()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isInLayout() {
        return this.f6096x;
    }

    public final boolean isMenuVisible() {
        if (!this.f6065N) {
            return false;
        }
        if (this.f6053B != null) {
            C c7 = this.f6056E;
            if (!(c7 == null ? true : c7.isMenuVisible())) {
                return false;
            }
        }
        return true;
    }

    public final boolean isRemoving() {
        return this.f6094v;
    }

    public final boolean isResumed() {
        return this.f6079b >= 7;
    }

    public final boolean isStateSaved() {
        AbstractC0467i0 abstractC0467i0 = this.f6053B;
        if (abstractC0467i0 == null) {
            return false;
        }
        return abstractC0467i0.isStateSaved();
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.f6068Q) == null || view.getWindowToken() == null || this.f6068Q.getVisibility() != 0) ? false : true;
    }

    @Deprecated
    public void onActivityCreated(Bundle bundle) {
        this.f6066O = true;
    }

    @Deprecated
    public void onActivityResult(int i2, int i7, Intent intent) {
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i2 + " resultCode: " + i7 + " data: " + intent);
        }
    }

    public void onAttach(Context context) {
        this.f6066O = true;
        P p6 = this.f6054C;
        H h7 = p6 == null ? null : p6.f6149b;
        if (h7 != null) {
            this.f6066O = false;
            onAttach((Activity) h7);
        }
    }

    @Deprecated
    public void onAttachFragment(C c7) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.f6066O = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        Parcelable parcelable;
        this.f6066O = true;
        if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
            this.f6055D.J(parcelable);
            C0469j0 c0469j0 = this.f6055D;
            c0469j0.f6213E = false;
            c0469j0.f6214F = false;
            c0469j0.f6220L.f6277i = false;
            c0469j0.t(1);
        }
        C0469j0 c0469j02 = this.f6055D;
        if (c0469j02.f6240s >= 1) {
            return;
        }
        c0469j02.f6213E = false;
        c0469j02.f6214F = false;
        c0469j02.f6220L.f6277i = false;
        c0469j02.t(1);
    }

    public Animation onCreateAnimation(int i2, boolean z6, int i7) {
        return null;
    }

    public Animator onCreateAnimator(int i2, boolean z6, int i7) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Deprecated
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    public void onDestroy() {
        this.f6066O = true;
    }

    @Deprecated
    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.f6066O = true;
    }

    public void onDetach() {
        this.f6066O = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z6) {
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.f6066O = true;
        P p6 = this.f6054C;
        H h7 = p6 == null ? null : p6.f6149b;
        if (h7 != null) {
            this.f6066O = false;
            onInflate((Activity) h7, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.f6066O = true;
    }

    public void onMultiWindowModeChanged(boolean z6) {
    }

    @Deprecated
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    @Deprecated
    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPause() {
        this.f6066O = true;
    }

    public void onPictureInPictureModeChanged(boolean z6) {
    }

    @Deprecated
    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z6) {
    }

    @Deprecated
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.f6066O = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
        this.f6066O = true;
    }

    public void onStop() {
        this.f6066O = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void onViewStateRestored(Bundle bundle) {
        this.f6066O = true;
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    public final H requireActivity() {
        H activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException(A.i.j("Fragment ", this, " not attached to an activity."));
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException(A.i.j("Fragment ", this, " not attached to a context."));
    }

    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException(A.i.j("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
    }

    public void setArguments(Bundle bundle) {
        if (this.f6053B != null && isStateSaved()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.f6088p = bundle;
    }

    @Deprecated
    public void setHasOptionsMenu(boolean z6) {
        if (this.f6064M != z6) {
            this.f6064M = z6;
            if (!isAdded() || isHidden()) {
                return;
            }
            this.f6054C.onSupportInvalidateOptionsMenu();
        }
    }

    public void setMenuVisibility(boolean z6) {
        if (this.f6065N != z6) {
            this.f6065N = z6;
            if (this.f6064M && isAdded() && !isHidden()) {
                this.f6054C.onSupportInvalidateOptionsMenu();
            }
        }
    }

    @Deprecated
    public void setRetainInstance(boolean z6) {
        g0.d.onSetRetainInstanceUsage(this);
        this.f6062K = z6;
        AbstractC0467i0 abstractC0467i0 = this.f6053B;
        if (abstractC0467i0 == null) {
            this.f6063L = true;
        } else if (z6) {
            abstractC0467i0.f6220L.b(this);
        } else {
            abstractC0467i0.f6220L.e(this);
        }
    }

    @Deprecated
    public void setUserVisibleHint(boolean z6) {
        g0.d.onSetUserVisibleHint(this, z6);
        boolean z7 = false;
        if (!this.f6070S && z6 && this.f6079b < 5 && this.f6053B != null && isAdded() && this.f6073V) {
            AbstractC0467i0 abstractC0467i0 = this.f6053B;
            s0 f3 = abstractC0467i0.f(this);
            C c7 = f3.f6304c;
            if (c7.f6069R) {
                if (abstractC0467i0.f6223b) {
                    abstractC0467i0.f6216H = true;
                } else {
                    c7.f6069R = false;
                    f3.k();
                }
            }
        }
        this.f6070S = z6;
        if (this.f6079b < 5 && !z6) {
            z7 = true;
        }
        this.f6069R = z7;
        if (this.f6083e != null) {
            this.f6086m = Boolean.valueOf(z6);
        }
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent) {
        startActivity(intent, null);
    }

    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i2) {
        startActivityForResult(intent, i2, null);
    }

    @Deprecated
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i7, int i8, int i9, Bundle bundle) throws IntentSender.SendIntentException {
        if (this.f6054C == null) {
            throw new IllegalStateException(A.i.j("Fragment ", this, " not attached to Activity"));
        }
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in startIntentSenderForResult() requestCode: " + i2 + " IntentSender: " + intentSender + " fillInIntent: " + intent + " options: " + bundle);
        }
        AbstractC0467i0 parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.f6209A == null) {
            parentFragmentManager.f6241t.onStartIntentSenderFromFragment(this, intentSender, i2, intent, i7, i8, i9, bundle);
            return;
        }
        if (bundle != null) {
            if (intent == null) {
                intent = new Intent();
                intent.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            }
            if (AbstractC0467i0.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "ActivityOptions " + bundle + " were added to fillInIntent " + intent + " for fragment " + this);
            }
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        androidx.activity.result.m build = new androidx.activity.result.j(intentSender).setFillInIntent(intent).setFlags(i8, i7).build();
        parentFragmentManager.f6211C.addLast(new C0461f0(this.f6087n, i2));
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Fragment " + this + "is launching an IntentSender for result ");
        }
        parentFragmentManager.f6209A.launch(build);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.f6087n);
        if (this.f6057F != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f6057F));
        }
        if (this.f6059H != null) {
            sb.append(" tag=");
            sb.append(this.f6059H);
        }
        sb.append(")");
        return sb.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent, Bundle bundle) {
        P p6 = this.f6054C;
        if (p6 == null) {
            throw new IllegalStateException(A.i.j("Fragment ", this, " not attached to Activity"));
        }
        p6.onStartActivityFromFragment(this, intent, -1, bundle);
    }

    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i2, Bundle bundle) {
        if (this.f6054C == null) {
            throw new IllegalStateException(A.i.j("Fragment ", this, " not attached to Activity"));
        }
        AbstractC0467i0 parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.f6247z == null) {
            parentFragmentManager.f6241t.onStartActivityFromFragment(this, intent, i2, bundle);
            return;
        }
        parentFragmentManager.f6211C.addLast(new C0461f0(this.f6087n, i2));
        if (intent != null && bundle != null) {
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        parentFragmentManager.f6247z.launch(intent);
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.f6066O = true;
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.f6066O = true;
    }
}
