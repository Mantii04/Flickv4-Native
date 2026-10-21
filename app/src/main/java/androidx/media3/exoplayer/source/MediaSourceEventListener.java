package androidx.media3.exoplayer.source;

import C4.C0082f;
import C4.M;
import P3.v;
import android.os.Handler;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

@UnstableApi
/* loaded from: classes.dex */
public interface MediaSourceEventListener {

    public static class EventDispatcher {
        private final CopyOnWriteArrayList<ListenerAndHandler> listenerAndHandlers;
        public final MediaSource.MediaPeriodId mediaPeriodId;
        public final int windowIndex;

        public static final class ListenerAndHandler {
            public Handler handler;
            public MediaSourceEventListener listener;

            public ListenerAndHandler(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
                this.handler = handler;
                this.listener = mediaSourceEventListener;
            }
        }

        public EventDispatcher() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$downstreamFormatChanged$5(MediaLoadData mediaLoadData, MediaSourceEventListener mediaSourceEventListener) {
            mediaSourceEventListener.onDownstreamFormatChanged(this.windowIndex, this.mediaPeriodId, mediaLoadData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadCanceled$2(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, MediaSourceEventListener mediaSourceEventListener) {
            mediaSourceEventListener.onLoadCanceled(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadCompleted$1(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, MediaSourceEventListener mediaSourceEventListener) {
            mediaSourceEventListener.onLoadCompleted(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadError$3(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z6, MediaSourceEventListener mediaSourceEventListener) {
            mediaSourceEventListener.onLoadError(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData, iOException, z6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadStarted$0(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i2, MediaSourceEventListener mediaSourceEventListener) {
            mediaSourceEventListener.onLoadStarted(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$upstreamDiscarded$4(MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData, MediaSourceEventListener mediaSourceEventListener) {
            mediaSourceEventListener.onUpstreamDiscarded(this.windowIndex, mediaPeriodId, mediaLoadData);
        }

        public void addEventListener(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
            v.checkNotNull(handler);
            v.checkNotNull(mediaSourceEventListener);
            this.listenerAndHandlers.add(new ListenerAndHandler(handler, mediaSourceEventListener));
        }

        public void dispatchEvent(Consumer<MediaSourceEventListener> consumer) {
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                Util.postOrRun(next.handler, new m(1, consumer, next.listener));
            }
        }

        public void downstreamFormatChanged(int i2, Format format, int i7, Object obj, long j7) {
            downstreamFormatChanged(new MediaLoadData(1, i2, format, i7, obj, Util.usToMs(j7), C.TIME_UNSET));
        }

        public void loadCanceled(LoadEventInfo loadEventInfo, int i2) {
            loadCanceled(loadEventInfo, i2, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET);
        }

        public void loadCompleted(LoadEventInfo loadEventInfo, int i2) {
            loadCompleted(loadEventInfo, i2, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET);
        }

        public void loadError(LoadEventInfo loadEventInfo, int i2, IOException iOException, boolean z6) {
            loadError(loadEventInfo, i2, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, iOException, z6);
        }

        @Deprecated
        public void loadStarted(LoadEventInfo loadEventInfo, int i2) {
            loadStarted(loadEventInfo, i2, 0);
        }

        public void removeEventListener(MediaSourceEventListener mediaSourceEventListener) {
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                if (next.listener == mediaSourceEventListener) {
                    this.listenerAndHandlers.remove(next);
                }
            }
        }

        public void upstreamDiscarded(int i2, long j7, long j8) {
            upstreamDiscarded(new MediaLoadData(1, i2, null, 3, null, Util.usToMs(j7), Util.usToMs(j8)));
        }

        public EventDispatcher withParameters(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
            return new EventDispatcher(this.listenerAndHandlers, i2, mediaPeriodId);
        }

        private EventDispatcher(CopyOnWriteArrayList<ListenerAndHandler> copyOnWriteArrayList, int i2, MediaSource.MediaPeriodId mediaPeriodId) {
            this.listenerAndHandlers = copyOnWriteArrayList;
            this.windowIndex = i2;
            this.mediaPeriodId = mediaPeriodId;
        }

        public void loadCanceled(LoadEventInfo loadEventInfo, int i2, int i7, Format format, int i8, Object obj, long j7, long j8) {
            loadCanceled(loadEventInfo, new MediaLoadData(i2, i7, format, i8, obj, Util.usToMs(j7), Util.usToMs(j8)));
        }

        public void loadCompleted(LoadEventInfo loadEventInfo, int i2, int i7, Format format, int i8, Object obj, long j7, long j8) {
            loadCompleted(loadEventInfo, new MediaLoadData(i2, i7, format, i8, obj, Util.usToMs(j7), Util.usToMs(j8)));
        }

        public void loadError(LoadEventInfo loadEventInfo, int i2, int i7, Format format, int i8, Object obj, long j7, long j8, IOException iOException, boolean z6) {
            loadError(loadEventInfo, new MediaLoadData(i2, i7, format, i8, obj, Util.usToMs(j7), Util.usToMs(j8)), iOException, z6);
        }

        public void loadStarted(LoadEventInfo loadEventInfo, int i2, int i7) {
            loadStarted(loadEventInfo, i2, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, i7);
        }

        @Deprecated
        public EventDispatcher withParameters(int i2, MediaSource.MediaPeriodId mediaPeriodId, long j7) {
            return new EventDispatcher(this.listenerAndHandlers, i2, mediaPeriodId);
        }

        @Deprecated
        public void loadStarted(LoadEventInfo loadEventInfo, int i2, int i7, Format format, int i8, Object obj, long j7, long j8) {
            loadStarted(loadEventInfo, new MediaLoadData(i2, i7, format, i8, obj, Util.usToMs(j7), Util.usToMs(j8)));
        }

        public void downstreamFormatChanged(MediaLoadData mediaLoadData) {
            dispatchEvent(new c(this, mediaLoadData));
        }

        public void upstreamDiscarded(MediaLoadData mediaLoadData) {
            dispatchEvent(new C0082f(this, (MediaSource.MediaPeriodId) v.checkNotNull(this.mediaPeriodId), mediaLoadData, 8));
        }

        public void loadCanceled(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            dispatchEvent(new j(this, loadEventInfo, mediaLoadData, 1));
        }

        public void loadCompleted(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            dispatchEvent(new j(this, loadEventInfo, mediaLoadData, 0));
        }

        public void loadError(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z6) {
            dispatchEvent(new androidx.media3.exoplayer.analytics.k(this, loadEventInfo, mediaLoadData, iOException, z6));
        }

        public void loadStarted(LoadEventInfo loadEventInfo, int i2, int i7, Format format, int i8, Object obj, long j7, long j8, int i9) {
            loadStarted(loadEventInfo, new MediaLoadData(i2, i7, format, i8, obj, Util.usToMs(j7), Util.usToMs(j8)), i9);
        }

        @Deprecated
        public void loadStarted(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            loadStarted(loadEventInfo, mediaLoadData, 0);
        }

        public void loadStarted(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i2) {
            dispatchEvent(new M(this, loadEventInfo, mediaLoadData, i2, 3));
        }
    }

    void onDownstreamFormatChanged(int i2, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData);

    void onLoadCanceled(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void onLoadCompleted(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void onLoadError(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z6);

    void onLoadStarted(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i7);

    void onUpstreamDiscarded(int i2, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData);
}
