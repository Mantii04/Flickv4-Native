package androidx.fragment.app;

import M.InterfaceC0195x;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.lifecycle.AbstractC0557o;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public final class G extends P implements A.l, A.m, z.P, z.Q, androidx.lifecycle.j0, androidx.activity.y, androidx.activity.result.i, q1.j, o0, InterfaceC0195x {

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ H f6118m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public G(H h7) {
        super(h7);
        this.f6118m = h7;
    }

    @Override // M.InterfaceC0195x
    public void addMenuProvider(M.E e3) {
        this.f6118m.addMenuProvider(e3);
    }

    @Override // A.l
    public void addOnConfigurationChangedListener(L.a aVar) {
        this.f6118m.addOnConfigurationChangedListener(aVar);
    }

    @Override // z.P
    public void addOnMultiWindowModeChangedListener(L.a aVar) {
        this.f6118m.addOnMultiWindowModeChangedListener(aVar);
    }

    @Override // z.Q
    public void addOnPictureInPictureModeChangedListener(L.a aVar) {
        this.f6118m.addOnPictureInPictureModeChangedListener(aVar);
    }

    @Override // A.m
    public void addOnTrimMemoryListener(L.a aVar) {
        this.f6118m.addOnTrimMemoryListener(aVar);
    }

    @Override // androidx.activity.result.i
    public ActivityResultRegistry getActivityResultRegistry() {
        return this.f6118m.getActivityResultRegistry();
    }

    @Override // androidx.lifecycle.InterfaceC0561t
    public AbstractC0557o getLifecycle() {
        return this.f6118m.mFragmentLifecycleRegistry;
    }

    @Override // androidx.activity.y
    public OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.f6118m.getOnBackPressedDispatcher();
    }

    @Override // q1.j
    public q1.g getSavedStateRegistry() {
        return this.f6118m.getSavedStateRegistry();
    }

    @Override // androidx.lifecycle.j0
    public androidx.lifecycle.i0 getViewModelStore() {
        return this.f6118m.getViewModelStore();
    }

    public void invalidateMenu() {
        this.f6118m.invalidateOptionsMenu();
    }

    @Override // androidx.fragment.app.o0
    public void onAttachFragment(AbstractC0467i0 abstractC0467i0, C c7) {
        this.f6118m.onAttachFragment(c7);
    }

    @Override // androidx.fragment.app.P
    public void onDump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f6118m.dump(str, fileDescriptor, printWriter, strArr);
    }

    @Override // androidx.fragment.app.L
    public View onFindViewById(int i2) {
        return this.f6118m.findViewById(i2);
    }

    @Override // androidx.fragment.app.P
    public LayoutInflater onGetLayoutInflater() {
        H h7 = this.f6118m;
        return h7.getLayoutInflater().cloneInContext(h7);
    }

    @Override // androidx.fragment.app.L
    public boolean onHasView() {
        Window window = this.f6118m.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }

    @Override // androidx.fragment.app.P
    public void onSupportInvalidateOptionsMenu() {
        invalidateMenu();
    }

    @Override // M.InterfaceC0195x
    public void removeMenuProvider(M.E e3) {
        this.f6118m.removeMenuProvider(e3);
    }

    @Override // A.l
    public void removeOnConfigurationChangedListener(L.a aVar) {
        this.f6118m.removeOnConfigurationChangedListener(aVar);
    }

    @Override // z.P
    public void removeOnMultiWindowModeChangedListener(L.a aVar) {
        this.f6118m.removeOnMultiWindowModeChangedListener(aVar);
    }

    @Override // z.Q
    public void removeOnPictureInPictureModeChangedListener(L.a aVar) {
        this.f6118m.removeOnPictureInPictureModeChangedListener(aVar);
    }

    @Override // A.m
    public void removeOnTrimMemoryListener(L.a aVar) {
        this.f6118m.removeOnTrimMemoryListener(aVar);
    }

    @Override // androidx.fragment.app.P
    public H onGetHost() {
        return this.f6118m;
    }
}
