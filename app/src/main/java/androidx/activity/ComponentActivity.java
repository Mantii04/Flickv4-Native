package androidx.activity;

import M.B;
import M.E;
import M.InterfaceC0195x;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.activity.result.ActivityResultRegistry;
import androidx.lifecycle.AbstractC0557o;
import androidx.lifecycle.C0564w;
import androidx.lifecycle.InterfaceC0552j;
import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.O;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.T;
import androidx.lifecycle.a0;
import androidx.lifecycle.c0;
import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import androidx.lifecycle.k0;
import androidx.lifecycle.l0;
import c.C0666a;
import c.InterfaceC0667b;
import d.AbstractC0771b;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import w1.AbstractC1775a;
import z.C1974u;
import z.P;
import z.Q;
import z.S;

/* loaded from: classes.dex */
public abstract class ComponentActivity extends z.r implements j0, InterfaceC0552j, q1.j, y, androidx.activity.result.i, A.l, A.m, P, Q, InterfaceC0195x, InterfaceC0404r {
    private static final String ACTIVITY_RESULT_TAG = "android:support:activity-result";
    private final ActivityResultRegistry mActivityResultRegistry;
    private int mContentLayoutId;
    private c0 mDefaultFactory;
    private boolean mDispatchingOnMultiWindowModeChanged;
    private boolean mDispatchingOnPictureInPictureModeChanged;
    final q mFullyDrawnReporter;
    private final AtomicInteger mNextLocalRequestCode;
    private OnBackPressedDispatcher mOnBackPressedDispatcher;
    private final CopyOnWriteArrayList<L.a> mOnConfigurationChangedListeners;
    private final CopyOnWriteArrayList<L.a> mOnMultiWindowModeChangedListeners;
    private final CopyOnWriteArrayList<L.a> mOnNewIntentListeners;
    private final CopyOnWriteArrayList<L.a> mOnPictureInPictureModeChangedListeners;
    private final CopyOnWriteArrayList<L.a> mOnTrimMemoryListeners;
    final n mReportFullyDrawnExecutor;
    final q1.i mSavedStateRegistryController;
    private i0 mViewModelStore;
    final C0666a mContextAwareHelper = new C0666a();
    private final B mMenuHostHelper = new B(new A3.d(this, 20));
    private final C0564w mLifecycleRegistry = new C0564w(this);

    public ComponentActivity() {
        q1.i create = q1.i.create(this);
        this.mSavedStateRegistryController = create;
        this.mOnBackPressedDispatcher = null;
        o oVar = new o(this);
        this.mReportFullyDrawnExecutor = oVar;
        this.mFullyDrawnReporter = new q(oVar, new H5.a() { // from class: androidx.activity.e
            @Override // H5.a
            public final Object invoke() {
                ComponentActivity.this.reportFullyDrawn();
                return null;
            }
        });
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mActivityResultRegistry = new j(this);
        this.mOnConfigurationChangedListeners = new CopyOnWriteArrayList<>();
        this.mOnTrimMemoryListeners = new CopyOnWriteArrayList<>();
        this.mOnNewIntentListeners = new CopyOnWriteArrayList<>();
        this.mOnMultiWindowModeChangedListeners = new CopyOnWriteArrayList<>();
        this.mOnPictureInPictureModeChangedListeners = new CopyOnWriteArrayList<>();
        this.mDispatchingOnMultiWindowModeChanged = false;
        this.mDispatchingOnPictureInPictureModeChanged = false;
        if (getLifecycle() == null) {
            throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
        }
        int i2 = Build.VERSION.SDK_INT;
        getLifecycle().addObserver(new androidx.lifecycle.r() { // from class: androidx.activity.ComponentActivity.2
            @Override // androidx.lifecycle.r
            public void onStateChanged(InterfaceC0561t interfaceC0561t, Lifecycle$Event lifecycle$Event) {
                if (lifecycle$Event == Lifecycle$Event.ON_STOP) {
                    Window window = ComponentActivity.this.getWindow();
                    View peekDecorView = window != null ? window.peekDecorView() : null;
                    if (peekDecorView != null) {
                        peekDecorView.cancelPendingInputEvents();
                    }
                }
            }
        });
        getLifecycle().addObserver(new androidx.lifecycle.r() { // from class: androidx.activity.ComponentActivity.3
            @Override // androidx.lifecycle.r
            public void onStateChanged(InterfaceC0561t interfaceC0561t, Lifecycle$Event lifecycle$Event) {
                if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
                    ComponentActivity componentActivity = ComponentActivity.this;
                    componentActivity.mContextAwareHelper.clearAvailableContext();
                    if (!componentActivity.isChangingConfigurations()) {
                        componentActivity.getViewModelStore().clear();
                    }
                    componentActivity.mReportFullyDrawnExecutor.activityDestroyed();
                }
            }
        });
        getLifecycle().addObserver(new androidx.lifecycle.r() { // from class: androidx.activity.ComponentActivity.4
            @Override // androidx.lifecycle.r
            public void onStateChanged(InterfaceC0561t interfaceC0561t, Lifecycle$Event lifecycle$Event) {
                ComponentActivity componentActivity = ComponentActivity.this;
                componentActivity.ensureViewModelStore();
                componentActivity.getLifecycle().removeObserver(this);
            }
        });
        create.performAttach();
        SavedStateHandleSupport.enableSavedStateHandles(this);
        if (i2 <= 23) {
            AbstractC0557o lifecycle = getLifecycle();
            ImmLeaksCleaner immLeaksCleaner = new ImmLeaksCleaner();
            immLeaksCleaner.f4842b = this;
            lifecycle.addObserver(immLeaksCleaner);
        }
        getSavedStateRegistry().registerSavedStateProvider(ACTIVITY_RESULT_TAG, new f(this, 0));
        addOnContextAvailableListener(new InterfaceC0667b() { // from class: androidx.activity.g
            @Override // c.InterfaceC0667b
            public final void onContextAvailable(Context context) {
                ComponentActivity.a(ComponentActivity.this);
            }
        });
    }

    public static /* synthetic */ void a(ComponentActivity componentActivity) {
        Bundle consumeRestoredStateForKey = componentActivity.getSavedStateRegistry().consumeRestoredStateForKey(ACTIVITY_RESULT_TAG);
        if (consumeRestoredStateForKey != null) {
            componentActivity.mActivityResultRegistry.onRestoreInstanceState(consumeRestoredStateForKey);
        }
    }

    public static /* synthetic */ Bundle b(ComponentActivity componentActivity) {
        Bundle bundle = new Bundle();
        componentActivity.mActivityResultRegistry.onSaveInstanceState(bundle);
        return bundle;
    }

    @Override // android.app.Activity
    public void addContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view, @SuppressLint({"UnknownNullness", "MissingNullability"}) ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        this.mReportFullyDrawnExecutor.viewCreated(getWindow().getDecorView());
        super.addContentView(view, layoutParams);
    }

    @Override // M.InterfaceC0195x
    public void addMenuProvider(E e3) {
        this.mMenuHostHelper.addMenuProvider(e3);
    }

    @Override // A.l
    public final void addOnConfigurationChangedListener(L.a aVar) {
        this.mOnConfigurationChangedListeners.add(aVar);
    }

    public final void addOnContextAvailableListener(InterfaceC0667b interfaceC0667b) {
        this.mContextAwareHelper.addOnContextAvailableListener(interfaceC0667b);
    }

    @Override // z.P
    public final void addOnMultiWindowModeChangedListener(L.a aVar) {
        this.mOnMultiWindowModeChangedListeners.add(aVar);
    }

    public final void addOnNewIntentListener(L.a aVar) {
        this.mOnNewIntentListeners.add(aVar);
    }

    @Override // z.Q
    public final void addOnPictureInPictureModeChangedListener(L.a aVar) {
        this.mOnPictureInPictureModeChangedListeners.add(aVar);
    }

    @Override // A.m
    public final void addOnTrimMemoryListener(L.a aVar) {
        this.mOnTrimMemoryListeners.add(aVar);
    }

    public void ensureViewModelStore() {
        if (this.mViewModelStore == null) {
            m mVar = (m) getLastNonConfigurationInstance();
            if (mVar != null) {
                this.mViewModelStore = mVar.f4878b;
            }
            if (this.mViewModelStore == null) {
                this.mViewModelStore = new i0();
            }
        }
    }

    @Override // androidx.activity.result.i
    public final ActivityResultRegistry getActivityResultRegistry() {
        return this.mActivityResultRegistry;
    }

    @Override // androidx.lifecycle.InterfaceC0552j
    public m0.c getDefaultViewModelCreationExtras() {
        m0.f fVar = new m0.f();
        if (getApplication() != null) {
            fVar.set(a0.f7024g, getApplication());
        }
        fVar.set(SavedStateHandleSupport.f6994a, this);
        fVar.set(SavedStateHandleSupport.f6995b, this);
        if (getIntent() != null && getIntent().getExtras() != null) {
            fVar.set(SavedStateHandleSupport.f6996c, getIntent().getExtras());
        }
        return fVar;
    }

    public c0 getDefaultViewModelProviderFactory() {
        if (this.mDefaultFactory == null) {
            this.mDefaultFactory = new T(getApplication(), this, getIntent() != null ? getIntent().getExtras() : null);
        }
        return this.mDefaultFactory;
    }

    public q getFullyDrawnReporter() {
        return this.mFullyDrawnReporter;
    }

    @Deprecated
    public Object getLastCustomNonConfigurationInstance() {
        m mVar = (m) getLastNonConfigurationInstance();
        if (mVar != null) {
            return mVar.f4877a;
        }
        return null;
    }

    @Override // androidx.lifecycle.InterfaceC0561t
    public AbstractC0557o getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // androidx.activity.y
    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        if (this.mOnBackPressedDispatcher == null) {
            this.mOnBackPressedDispatcher = new OnBackPressedDispatcher(new k(this));
            getLifecycle().addObserver(new androidx.lifecycle.r() { // from class: androidx.activity.ComponentActivity.6
                @Override // androidx.lifecycle.r
                public void onStateChanged(InterfaceC0561t interfaceC0561t, Lifecycle$Event lifecycle$Event) {
                    if (lifecycle$Event != Lifecycle$Event.ON_CREATE || Build.VERSION.SDK_INT < 33) {
                        return;
                    }
                    ComponentActivity.this.mOnBackPressedDispatcher.setOnBackInvokedDispatcher(l.a((ComponentActivity) interfaceC0561t));
                }
            });
        }
        return this.mOnBackPressedDispatcher;
    }

    @Override // q1.j
    public final q1.g getSavedStateRegistry() {
        return this.mSavedStateRegistryController.getSavedStateRegistry();
    }

    @Override // androidx.lifecycle.j0
    public i0 getViewModelStore() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        ensureViewModelStore();
        return this.mViewModelStore;
    }

    public void initializeViewTreeOwners() {
        k0.set(getWindow().getDecorView(), this);
        l0.set(getWindow().getDecorView(), this);
        androidx.savedstate.a.set(getWindow().getDecorView(), this);
        A.set(getWindow().getDecorView(), this);
        z.set(getWindow().getDecorView(), this);
    }

    public void invalidateMenu() {
        invalidateOptionsMenu();
    }

    @Override // android.app.Activity
    @Deprecated
    public void onActivityResult(int i2, int i7, Intent intent) {
        if (this.mActivityResultRegistry.dispatchResult(i2, i7, intent)) {
            return;
        }
        super.onActivityResult(i2, i7, intent);
    }

    @Override // android.app.Activity
    @Deprecated
    public void onBackPressed() {
        getOnBackPressedDispatcher().onBackPressed();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Iterator<L.a> it = this.mOnConfigurationChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(configuration);
        }
    }

    @Override // z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.mSavedStateRegistryController.performRestore(bundle);
        this.mContextAwareHelper.dispatchOnContextAvailable(this);
        super.onCreate(bundle);
        O.injectIfNeededIn(this);
        int i2 = this.mContentLayoutId;
        if (i2 != 0) {
            setContentView(i2);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i2, Menu menu) {
        if (i2 != 0) {
            return true;
        }
        super.onCreatePanelMenu(i2, menu);
        this.mMenuHostHelper.onCreateMenu(menu, getMenuInflater());
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        if (super.onMenuItemSelected(i2, menuItem)) {
            return true;
        }
        if (i2 == 0) {
            return this.mMenuHostHelper.onMenuItemSelected(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z6) {
        if (this.mDispatchingOnMultiWindowModeChanged) {
            return;
        }
        Iterator<L.a> it = this.mOnMultiWindowModeChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(new C1974u(z6));
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(@SuppressLint({"UnknownNullness", "MissingNullability"}) Intent intent) {
        super.onNewIntent(intent);
        Iterator<L.a> it = this.mOnNewIntentListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i2, Menu menu) {
        this.mMenuHostHelper.onMenuClosed(menu);
        super.onPanelClosed(i2, menu);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z6) {
        if (this.mDispatchingOnPictureInPictureModeChanged) {
            return;
        }
        Iterator<L.a> it = this.mOnPictureInPictureModeChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(new S(z6));
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i2, View view, Menu menu) {
        if (i2 != 0) {
            return true;
        }
        super.onPreparePanel(i2, view, menu);
        this.mMenuHostHelper.onPrepareMenu(menu);
        return true;
    }

    @Override // android.app.Activity
    @Deprecated
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        if (this.mActivityResultRegistry.dispatchResult(i2, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr))) {
            return;
        }
        super.onRequestPermissionsResult(i2, strArr, iArr);
    }

    @Deprecated
    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        m mVar;
        Object onRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        i0 i0Var = this.mViewModelStore;
        if (i0Var == null && (mVar = (m) getLastNonConfigurationInstance()) != null) {
            i0Var = mVar.f4878b;
        }
        if (i0Var == null && onRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        m mVar2 = new m();
        mVar2.f4877a = onRetainCustomNonConfigurationInstance;
        mVar2.f4878b = i0Var;
        return mVar2;
    }

    @Override // z.r, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        AbstractC0557o lifecycle = getLifecycle();
        if (lifecycle instanceof C0564w) {
            ((C0564w) lifecycle).setCurrentState(Lifecycle$State.f6969f);
        }
        super.onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.performSave(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
        super.onTrimMemory(i2);
        Iterator<L.a> it = this.mOnTrimMemoryListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(Integer.valueOf(i2));
        }
    }

    public Context peekAvailableContext() {
        return this.mContextAwareHelper.peekAvailableContext();
    }

    public final <I, O> androidx.activity.result.d registerForActivityResult(AbstractC0771b abstractC0771b, ActivityResultRegistry activityResultRegistry, androidx.activity.result.c cVar) {
        return activityResultRegistry.register("activity_rq#" + this.mNextLocalRequestCode.getAndIncrement(), this, abstractC0771b, cVar);
    }

    @Override // M.InterfaceC0195x
    public void removeMenuProvider(E e3) {
        this.mMenuHostHelper.removeMenuProvider(e3);
    }

    @Override // A.l
    public final void removeOnConfigurationChangedListener(L.a aVar) {
        this.mOnConfigurationChangedListeners.remove(aVar);
    }

    public final void removeOnContextAvailableListener(InterfaceC0667b interfaceC0667b) {
        this.mContextAwareHelper.removeOnContextAvailableListener(interfaceC0667b);
    }

    @Override // z.P
    public final void removeOnMultiWindowModeChangedListener(L.a aVar) {
        this.mOnMultiWindowModeChangedListeners.remove(aVar);
    }

    public final void removeOnNewIntentListener(L.a aVar) {
        this.mOnNewIntentListeners.remove(aVar);
    }

    @Override // z.Q
    public final void removeOnPictureInPictureModeChangedListener(L.a aVar) {
        this.mOnPictureInPictureModeChangedListeners.remove(aVar);
    }

    @Override // A.m
    public final void removeOnTrimMemoryListener(L.a aVar) {
        this.mOnTrimMemoryListeners.remove(aVar);
    }

    @Override // android.app.Activity
    public void reportFullyDrawn() {
        try {
            if (AbstractC1775a.isEnabled()) {
                AbstractC1775a.beginSection("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
            this.mFullyDrawnReporter.fullyDrawnReported();
            AbstractC1775a.endSection();
        } catch (Throwable th) {
            AbstractC1775a.endSection();
            throw th;
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i2) {
        initializeViewTreeOwners();
        this.mReportFullyDrawnExecutor.viewCreated(getWindow().getDecorView());
        super.setContentView(i2);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(Intent intent, int i2) {
        super.startActivityForResult(intent, i2);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i2, Intent intent, int i7, int i8, int i9) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i2, intent, i7, i8, i9);
    }

    public void addMenuProvider(E e3, InterfaceC0561t interfaceC0561t) {
        this.mMenuHostHelper.addMenuProvider(e3, interfaceC0561t);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(Intent intent, int i2, Bundle bundle) {
        super.startActivityForResult(intent, i2, bundle);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i2, Intent intent, int i7, int i8, int i9, Bundle bundle) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i2, intent, i7, i8, i9, bundle);
    }

    @SuppressLint({"LambdaLast"})
    public void addMenuProvider(E e3, InterfaceC0561t interfaceC0561t, Lifecycle$State lifecycle$State) {
        this.mMenuHostHelper.addMenuProvider(e3, interfaceC0561t, lifecycle$State);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z6, Configuration configuration) {
        this.mDispatchingOnMultiWindowModeChanged = true;
        try {
            super.onMultiWindowModeChanged(z6, configuration);
            this.mDispatchingOnMultiWindowModeChanged = false;
            Iterator<L.a> it = this.mOnMultiWindowModeChangedListeners.iterator();
            while (it.hasNext()) {
                it.next().accept(new C1974u(z6, configuration));
            }
        } catch (Throwable th) {
            this.mDispatchingOnMultiWindowModeChanged = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z6, Configuration configuration) {
        this.mDispatchingOnPictureInPictureModeChanged = true;
        try {
            super.onPictureInPictureModeChanged(z6, configuration);
            this.mDispatchingOnPictureInPictureModeChanged = false;
            Iterator<L.a> it = this.mOnPictureInPictureModeChangedListeners.iterator();
            while (it.hasNext()) {
                it.next().accept(new S(z6, configuration));
            }
        } catch (Throwable th) {
            this.mDispatchingOnPictureInPictureModeChanged = false;
            throw th;
        }
    }

    public final <I, O> androidx.activity.result.d registerForActivityResult(AbstractC0771b abstractC0771b, androidx.activity.result.c cVar) {
        return registerForActivityResult(abstractC0771b, this.mActivityResultRegistry, cVar);
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view) {
        initializeViewTreeOwners();
        this.mReportFullyDrawnExecutor.viewCreated(getWindow().getDecorView());
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view, @SuppressLint({"UnknownNullness", "MissingNullability"}) ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        this.mReportFullyDrawnExecutor.viewCreated(getWindow().getDecorView());
        super.setContentView(view, layoutParams);
    }
}
