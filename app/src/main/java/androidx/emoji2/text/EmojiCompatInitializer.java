package androidx.emoji2.text;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.AbstractC0547e;
import androidx.lifecycle.AbstractC0557o;
import androidx.lifecycle.InterfaceC0548f;
import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.ProcessLifecycleInitializer;
import java.util.Collections;
import java.util.List;
import u1.InterfaceC1669a;

/* loaded from: classes.dex */
public class EmojiCompatInitializer implements InterfaceC1669a {
    @Override // u1.InterfaceC1669a
    public List<Class<? extends InterfaceC1669a>> dependencies() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // u1.InterfaceC1669a
    public Boolean create(Context context) {
        p.init(new q(context));
        final AbstractC0557o lifecycle = ((InterfaceC0561t) androidx.startup.a.getInstance(context).initializeComponent(ProcessLifecycleInitializer.class)).getLifecycle();
        lifecycle.addObserver(new InterfaceC0548f(this) { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // androidx.lifecycle.InterfaceC0548f
            public final /* synthetic */ void onCreate(InterfaceC0561t interfaceC0561t) {
                AbstractC0547e.a(this, interfaceC0561t);
            }

            @Override // androidx.lifecycle.InterfaceC0548f
            public final /* synthetic */ void onDestroy(InterfaceC0561t interfaceC0561t) {
                AbstractC0547e.b(this, interfaceC0561t);
            }

            @Override // androidx.lifecycle.InterfaceC0548f
            public final /* synthetic */ void onPause(InterfaceC0561t interfaceC0561t) {
                AbstractC0547e.c(this, interfaceC0561t);
            }

            @Override // androidx.lifecycle.InterfaceC0548f
            public void onResume(InterfaceC0561t interfaceC0561t) {
                (Build.VERSION.SDK_INT >= 28 ? AbstractC0443b.createAsync(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new t(), 500L);
                lifecycle.removeObserver(this);
            }

            @Override // androidx.lifecycle.InterfaceC0548f
            public final /* synthetic */ void onStart(InterfaceC0561t interfaceC0561t) {
                AbstractC0547e.e(this, interfaceC0561t);
            }

            @Override // androidx.lifecycle.InterfaceC0548f
            public final /* synthetic */ void onStop(InterfaceC0561t interfaceC0561t) {
                AbstractC0547e.f(this, interfaceC0561t);
            }
        });
        return Boolean.TRUE;
    }
}
