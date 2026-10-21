package androidx.emoji2.text;

import B4.RunnableC0061y;
import android.content.Context;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class s implements n {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6011a;

    public s(Context context) {
        this.f6011a = context.getApplicationContext();
    }

    @Override // androidx.emoji2.text.n
    public void load(o oVar) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadFactoryC0442a("EmojiCompatInitializer"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        threadPoolExecutor.execute(new RunnableC0061y(this, oVar, threadPoolExecutor, 1));
    }
}
