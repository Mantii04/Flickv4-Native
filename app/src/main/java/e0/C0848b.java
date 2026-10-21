package e0;

import android.text.Editable;
import androidx.emoji2.text.E;

/* renamed from: e0.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0848b extends Editable.Factory {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f13909a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static volatile C0848b f13910b;

    /* renamed from: c, reason: collision with root package name */
    public static Class f13911c;

    public static Editable.Factory getInstance() {
        if (f13910b == null) {
            synchronized (f13909a) {
                try {
                    if (f13910b == null) {
                        C0848b c0848b = new C0848b();
                        try {
                            f13911c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, C0848b.class.getClassLoader());
                        } catch (Throwable unused) {
                        }
                        f13910b = c0848b;
                    }
                } finally {
                }
            }
        }
        return f13910b;
    }

    @Override // android.text.Editable.Factory
    public Editable newEditable(CharSequence charSequence) {
        Class cls = f13911c;
        return cls != null ? E.create(cls, charSequence) : super.newEditable(charSequence);
    }
}
