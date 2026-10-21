package b6;

import R5.AbstractC0283l;
import R5.C0287n;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import kotlin.Result;

/* loaded from: classes2.dex */
public final class b implements OnCompleteListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0287n f8523a;

    public b(C0287n c0287n) {
        this.f8523a = c0287n;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<Object> task) {
        Exception exception = task.getException();
        C0287n c0287n = this.f8523a;
        if (exception != null) {
            int i2 = Result.f17390b;
            c0287n.resumeWith(Result.m103constructorimpl(kotlin.b.createFailure(exception)));
        } else if (task.isCanceled()) {
            AbstractC0283l.cancel$default(c0287n, null, 1, null);
        } else {
            int i7 = Result.f17390b;
            c0287n.resumeWith(Result.m103constructorimpl(task.getResult()));
        }
    }
}
