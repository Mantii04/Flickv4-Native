package k3;

import android.view.View;
import com.google.android.material.bottomappbar.BottomAppBar$Behavior;

/* renamed from: k3.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class ViewOnLayoutChangeListenerC1097a implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BottomAppBar$Behavior f17296a;

    public ViewOnLayoutChangeListenerC1097a(BottomAppBar$Behavior bottomAppBar$Behavior) {
        this.f17296a = bottomAppBar$Behavior;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i2, int i7, int i8, int i9, int i10, int i11, int i12, int i13) {
        if (this.f17296a.f12456u.get() != null) {
            throw new ClassCastException();
        }
        view.removeOnLayoutChangeListener(this);
    }
}
