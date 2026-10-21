package okhttp3.internal.concurrent;

import A.i;
import H5.a;
import androidx.media3.common.PlaybackException;
import cz.msebera.android.httpclient.message.TokenParser;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.jvm.internal.j;
import okhttp3.internal.http2.Http2Connection;

/* loaded from: classes2.dex */
public final class TaskLoggerKt {
    public static final String formatDuration(long j7) {
        String format = String.format("%6s", Arrays.copyOf(new Object[]{j7 <= -999500000 ? i.n(new StringBuilder(), (j7 - 500000000) / Http2Connection.DEGRADED_PONG_TIMEOUT_NS, " s ") : j7 <= -999500 ? i.n(new StringBuilder(), (j7 - 500000) / PlaybackException.CUSTOM_ERROR_CODE_BASE, " ms") : j7 <= 0 ? i.n(new StringBuilder(), (j7 - 500) / 1000, " µs") : j7 < 999500 ? i.n(new StringBuilder(), (j7 + 500) / 1000, " µs") : j7 < 999500000 ? i.n(new StringBuilder(), (j7 + 500000) / PlaybackException.CUSTOM_ERROR_CODE_BASE, " ms") : i.n(new StringBuilder(), (j7 + 500000000) / Http2Connection.DEGRADED_PONG_TIMEOUT_NS, " s ")}, 1));
        j.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void log(Task task, TaskQueue taskQueue, String str) {
        Logger logger = TaskRunner.Companion.getLogger();
        StringBuilder sb = new StringBuilder();
        sb.append(taskQueue.getName$okhttp());
        sb.append(TokenParser.SP);
        String format = String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1));
        j.checkNotNullExpressionValue(format, "format(format, *args)");
        sb.append(format);
        sb.append(": ");
        sb.append(task.getName());
        logger.fine(sb.toString());
    }

    public static final <T> T logElapsed(Task task, TaskQueue queue, a block) {
        long j7;
        j.checkNotNullParameter(task, "task");
        j.checkNotNullParameter(queue, "queue");
        j.checkNotNullParameter(block, "block");
        boolean isLoggable = TaskRunner.Companion.getLogger().isLoggable(Level.FINE);
        if (isLoggable) {
            j7 = queue.getTaskRunner$okhttp().getBackend().nanoTime();
            log(task, queue, "starting");
        } else {
            j7 = -1;
        }
        try {
            T t6 = (T) block.invoke();
            kotlin.jvm.internal.i.finallyStart(1);
            if (isLoggable) {
                log(task, queue, "finished run in " + formatDuration(queue.getTaskRunner$okhttp().getBackend().nanoTime() - j7));
            }
            kotlin.jvm.internal.i.finallyEnd(1);
            return t6;
        } catch (Throwable th) {
            kotlin.jvm.internal.i.finallyStart(1);
            if (isLoggable) {
                log(task, queue, "failed a run in " + formatDuration(queue.getTaskRunner$okhttp().getBackend().nanoTime() - j7));
            }
            kotlin.jvm.internal.i.finallyEnd(1);
            throw th;
        }
    }

    public static final void taskLog(Task task, TaskQueue queue, a messageBlock) {
        j.checkNotNullParameter(task, "task");
        j.checkNotNullParameter(queue, "queue");
        j.checkNotNullParameter(messageBlock, "messageBlock");
        if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
            log(task, queue, (String) messageBlock.invoke());
        }
    }
}
