package okhttp3.internal.concurrent;

import H5.a;

/* loaded from: classes2.dex */
public final class TaskQueue$execute$1 extends Task {
    final /* synthetic */ a $block;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TaskQueue$execute$1(String str, boolean z6, a aVar) {
        super(str, z6);
        this.$block = aVar;
    }

    @Override // okhttp3.internal.concurrent.Task
    public long runOnce() {
        this.$block.invoke();
        return -1L;
    }
}
