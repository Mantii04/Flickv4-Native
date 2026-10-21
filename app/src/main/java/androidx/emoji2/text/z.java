package androidx.emoji2.text;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class z extends k {

    /* renamed from: d, reason: collision with root package name */
    public static final x f6034d = new x();

    public z(Context context, J.i iVar) {
        super(new y(context, iVar, f6034d));
    }

    public z setLoadingExecutor(Executor executor) {
        ((y) getMetadataRepoLoader()).setExecutor(executor);
        return this;
    }
}
