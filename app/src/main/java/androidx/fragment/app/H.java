package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.C0564w;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import c.InterfaceC0667b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import n0.AbstractC1353a;
import z.AbstractC1958d;
import z.InterfaceC1957c;

/* loaded from: classes.dex */
public abstract class H extends ComponentActivity implements InterfaceC1957c {
    static final String LIFECYCLE_TAG = "android:support:lifecycle";
    boolean mCreated;
    boolean mResumed;
    final N mFragments = N.createController(new G(this));
    final C0564w mFragmentLifecycleRegistry = new C0564w(this);
    boolean mStopped = true;

    public H() {
        getSavedStateRegistry().registerSavedStateProvider(LIFECYCLE_TAG, new D(this, 0));
        final int i2 = 0;
        addOnConfigurationChangedListener(new L.a(this) { // from class: androidx.fragment.app.E

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ H f6107b;

            {
                this.f6107b = this;
            }

            @Override // L.a
            public final void accept(Object obj) {
                switch (i2) {
                    case 0:
                        this.f6107b.mFragments.noteStateNotSaved();
                        break;
                    default:
                        this.f6107b.mFragments.noteStateNotSaved();
                        break;
                }
            }
        });
        final int i7 = 1;
        addOnNewIntentListener(new L.a(this) { // from class: androidx.fragment.app.E

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ H f6107b;

            {
                this.f6107b = this;
            }

            @Override // L.a
            public final void accept(Object obj) {
                switch (i7) {
                    case 0:
                        this.f6107b.mFragments.noteStateNotSaved();
                        break;
                    default:
                        this.f6107b.mFragments.noteStateNotSaved();
                        break;
                }
            }
        });
        addOnContextAvailableListener(new InterfaceC0667b() { // from class: androidx.fragment.app.F
            @Override // c.InterfaceC0667b
            public final void onContextAvailable(Context context) {
                H.this.mFragments.attachHost(null);
            }
        });
    }

    public static boolean c(AbstractC0467i0 abstractC0467i0) {
        Lifecycle$State lifecycle$State = Lifecycle$State.f6969f;
        boolean z6 = false;
        for (C c7 : abstractC0467i0.getFragments()) {
            if (c7 != null) {
                if (c7.getHost() != null) {
                    z6 |= c(c7.getChildFragmentManager());
                }
                F0 f02 = c7.f6077Z;
                Lifecycle$State lifecycle$State2 = Lifecycle$State.f6970j;
                if (f02 != null && f02.getLifecycle().getCurrentState().isAtLeast(lifecycle$State2)) {
                    c7.f6077Z.f6111f.setCurrentState(lifecycle$State);
                    z6 = true;
                }
                if (c7.f6076Y.getCurrentState().isAtLeast(lifecycle$State2)) {
                    c7.f6076Y.setCurrentState(lifecycle$State);
                    z6 = true;
                }
            }
        }
        return z6;
    }

    public final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.onCreateView(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (shouldDumpInternalState(strArr)) {
            printWriter.print(str);
            printWriter.print("Local FragmentActivity ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(" State:");
            String str2 = str + "  ";
            printWriter.print(str2);
            printWriter.print("mCreated=");
            printWriter.print(this.mCreated);
            printWriter.print(" mResumed=");
            printWriter.print(this.mResumed);
            printWriter.print(" mStopped=");
            printWriter.print(this.mStopped);
            if (getApplication() != null) {
                AbstractC1353a.getInstance(this).dump(str2, fileDescriptor, printWriter, strArr);
            }
            this.mFragments.getSupportFragmentManager().dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    public AbstractC0467i0 getSupportFragmentManager() {
        return this.mFragments.getSupportFragmentManager();
    }

    @Deprecated
    public AbstractC1353a getSupportLoaderManager() {
        return AbstractC1353a.getInstance(this);
    }

    public void markFragmentsCreated() {
        while (c(getSupportFragmentManager())) {
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i7, Intent intent) {
        this.mFragments.noteStateNotSaved();
        super.onActivityResult(i2, i7, intent);
    }

    @Deprecated
    public void onAttachFragment(C c7) {
    }

    @Override // androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_CREATE);
        this.mFragments.dispatchCreate();
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mFragments.dispatchDestroy();
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_DESTROY);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        if (super.onMenuItemSelected(i2, menuItem)) {
            return true;
        }
        if (i2 == 6) {
            return this.mFragments.dispatchContextItemSelected(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.dispatchPause();
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        this.mFragments.noteStateNotSaved();
        super.onRequestPermissionsResult(i2, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        this.mFragments.noteStateNotSaved();
        super.onResume();
        this.mResumed = true;
        this.mFragments.execPendingActions();
    }

    public void onResumeFragments() {
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_RESUME);
        this.mFragments.dispatchResume();
    }

    @Override // android.app.Activity
    public void onStart() {
        this.mFragments.noteStateNotSaved();
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.dispatchActivityCreated();
        }
        this.mFragments.execPendingActions();
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_START);
        this.mFragments.dispatchStart();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.noteStateNotSaved();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        this.mFragments.dispatchStop();
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_STOP);
    }

    public void setEnterSharedElementCallback(z.V v6) {
        AbstractC1958d.setEnterSharedElementCallback(this, v6);
    }

    public void setExitSharedElementCallback(z.V v6) {
        AbstractC1958d.setExitSharedElementCallback(this, v6);
    }

    public void startActivityFromFragment(C c7, @SuppressLint({"UnknownNullness"}) Intent intent, int i2) {
        startActivityFromFragment(c7, intent, i2, (Bundle) null);
    }

    @Deprecated
    public void startIntentSenderFromFragment(C c7, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i7, int i8, int i9, Bundle bundle) throws IntentSender.SendIntentException {
        if (i2 == -1) {
            AbstractC1958d.startIntentSenderForResult(this, intentSender, i2, intent, i7, i8, i9, bundle);
        } else {
            c7.startIntentSenderForResult(intentSender, i2, intent, i7, i8, i9, bundle);
        }
    }

    public void supportFinishAfterTransition() {
        AbstractC1958d.finishAfterTransition(this);
    }

    public void supportPostponeEnterTransition() {
        AbstractC1958d.postponeEnterTransition(this);
    }

    public void supportStartPostponedEnterTransition() {
        AbstractC1958d.startPostponedEnterTransition(this);
    }

    @Override // z.InterfaceC1957c
    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i2) {
    }

    public void startActivityFromFragment(C c7, @SuppressLint({"UnknownNullness"}) Intent intent, int i2, Bundle bundle) {
        if (i2 == -1) {
            AbstractC1958d.startActivityForResult(this, intent, -1, bundle);
        } else {
            c7.startActivityForResult(intent, i2, bundle);
        }
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }
}
