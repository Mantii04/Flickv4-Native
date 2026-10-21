package n0;

import androidx.lifecycle.X;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p.r;

/* renamed from: n0.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1355c extends X {

    /* renamed from: e, reason: collision with root package name */
    public static final C1354b f18768e = new C1354b();

    /* renamed from: d, reason: collision with root package name */
    public final r f18769d = new r();

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        r rVar = this.f18769d;
        if (rVar.size() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            if (rVar.size() <= 0) {
                return;
            }
            if (rVar.valueAt(0) != null) {
                throw new ClassCastException();
            }
            printWriter.print(str);
            printWriter.print("  #");
            printWriter.print(rVar.keyAt(0));
            printWriter.print(": ");
            throw null;
        }
    }

    @Override // androidx.lifecycle.X
    public void onCleared() {
        super.onCleared();
        r rVar = this.f18769d;
        if (rVar.size() <= 0) {
            rVar.clear();
        } else {
            rVar.valueAt(0).getClass();
            throw new ClassCastException();
        }
    }
}
