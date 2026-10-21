package androidx.media3.exoplayer;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class MetadataRetrieverInternal implements AutoCloseable {
    private final Clock clock;
    private final MediaItem mediaItem;
    private final MediaSource.Factory mediaSourceFactory;
    private V3.M preparationFuture;
    private boolean released;
    private RetrievalTask retrievalTask;
    private final Object lock = new Object();
    private final List<V3.F> allFutures = new ArrayList();

    public static final class InternalResult {
        public final Timeline timeline;
        public final TrackGroupArray trackGroups;

        public InternalResult(TrackGroupArray trackGroupArray, Timeline timeline) {
            this.trackGroups = trackGroupArray;
            this.timeline = timeline;
        }
    }

    public static final class RetrievalTask {
        private static final int MESSAGE_CHECK_FOR_FAILURE = 2;
        private static final int MESSAGE_CONTINUE_LOADING = 3;
        private static final int MESSAGE_PREPARE_SOURCE = 1;
        private static final int MESSAGE_RELEASE = 4;
        private static final SharedWorkerThread SHARED_WORKER_THREAD = new SharedWorkerThread();
        private final MediaItem mediaItem;
        private final MediaSource.Factory mediaSourceFactory;
        private final HandlerWrapper mediaSourceHandler;
        private final OnFailureListener onFailureListener;
        private final OnPreparedListener onPreparedListener;
        private boolean sentReleaseMessage;

        public final class MediaSourceHandlerCallback implements Handler.Callback {
            private static final int ERROR_POLL_INTERVAL_MS = 100;
            private MediaPeriod mediaPeriod;
            private MediaSource mediaSource;
            private final MediaSourceCaller mediaSourceCaller = new MediaSourceCaller();
            private boolean released;
            private Timeline timeline;

            public final class MediaSourceCaller implements MediaSource.MediaSourceCaller {
                private boolean mediaPeriodCreated;
                private final MediaPeriodCallback mediaPeriodCallback = new MediaPeriodCallback();
                private final Allocator allocator = new DefaultAllocator(true, 65536);

                public final class MediaPeriodCallback implements MediaPeriod.Callback {
                    private MediaPeriodCallback() {
                    }

                    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
                    public void onPrepared(MediaPeriod mediaPeriod) {
                        RetrievalTask.this.onPreparedListener.onPrepared(mediaPeriod.getTrackGroups(), (Timeline) P3.v.checkNotNull(MediaSourceHandlerCallback.this.timeline));
                        RetrievalTask.this.release();
                    }

                    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
                    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
                        RetrievalTask.this.mediaSourceHandler.obtainMessage(3).sendToTarget();
                    }
                }

                public MediaSourceCaller() {
                }

                @Override // androidx.media3.exoplayer.source.MediaSource.MediaSourceCaller
                public void onSourceInfoRefreshed(MediaSource mediaSource, Timeline timeline) {
                    MediaSourceHandlerCallback.this.timeline = timeline;
                    if (this.mediaPeriodCreated) {
                        return;
                    }
                    this.mediaPeriodCreated = true;
                    MediaSourceHandlerCallback.this.mediaPeriod = mediaSource.createPeriod(new MediaSource.MediaPeriodId(timeline.getUidOfPeriod(0)), this.allocator, 0L);
                    MediaSourceHandlerCallback.this.mediaPeriod.prepare(this.mediaPeriodCallback, 0L);
                }
            }

            public MediaSourceHandlerCallback() {
            }

            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (!this.released) {
                    int i2 = message.what;
                    if (i2 == 1) {
                        MediaSource createMediaSource = RetrievalTask.this.mediaSourceFactory.createMediaSource((MediaItem) message.obj);
                        this.mediaSource = createMediaSource;
                        createMediaSource.prepareSource(this.mediaSourceCaller, null, PlayerId.UNSET);
                        RetrievalTask.this.mediaSourceHandler.sendEmptyMessage(2);
                        return true;
                    }
                    if (i2 != 2) {
                        if (i2 == 3) {
                            ((MediaPeriod) P3.v.checkNotNull(this.mediaPeriod)).continueLoading(new LoadingInfo.Builder().setPlaybackPositionUs(0L).build());
                            return true;
                        }
                        if (i2 != 4) {
                            return false;
                        }
                        if (this.mediaPeriod != null) {
                            ((MediaSource) P3.v.checkNotNull(this.mediaSource)).releasePeriod(this.mediaPeriod);
                        }
                        MediaSource mediaSource = this.mediaSource;
                        if (mediaSource != null) {
                            mediaSource.releaseSource(this.mediaSourceCaller);
                        }
                        RetrievalTask.this.mediaSourceHandler.removeCallbacksAndMessages(null);
                        RetrievalTask.SHARED_WORKER_THREAD.removeWorker();
                        this.released = true;
                        return true;
                    }
                    try {
                        MediaPeriod mediaPeriod = this.mediaPeriod;
                        if (mediaPeriod == null) {
                            ((MediaSource) P3.v.checkNotNull(this.mediaSource)).maybeThrowSourceInfoRefreshError();
                        } else {
                            mediaPeriod.maybeThrowPrepareError();
                        }
                        RetrievalTask.this.mediaSourceHandler.sendEmptyMessageDelayed(2, 100);
                        return true;
                    } catch (IOException e3) {
                        RetrievalTask.this.onFailureListener.onFailure(e3);
                        RetrievalTask.this.release();
                    }
                }
                return true;
            }
        }

        public interface OnFailureListener {
            void onFailure(Exception exc);
        }

        public interface OnPreparedListener {
            void onPrepared(TrackGroupArray trackGroupArray, Timeline timeline);
        }

        public RetrievalTask(MediaSource.Factory factory, MediaItem mediaItem, Clock clock, OnPreparedListener onPreparedListener, OnFailureListener onFailureListener) {
            this.mediaSourceFactory = factory;
            this.mediaItem = mediaItem;
            this.onPreparedListener = onPreparedListener;
            this.onFailureListener = onFailureListener;
            this.mediaSourceHandler = clock.createHandler(SHARED_WORKER_THREAD.addWorker(), new MediaSourceHandlerCallback());
        }

        public void queueRetrieval() {
            SHARED_WORKER_THREAD.startRetrieval(this);
        }

        public synchronized void release() {
            if (!this.sentReleaseMessage) {
                this.sentReleaseMessage = true;
                this.mediaSourceHandler.obtainMessage(4).sendToTarget();
            }
        }

        public void start() {
            this.mediaSourceHandler.obtainMessage(1, this.mediaItem).sendToTarget();
        }
    }

    public static final class SharedWorkerThread {
        public static final AtomicInteger MAX_PARALLEL_RETRIEVALS = new AtomicInteger(5);
        private HandlerThread mediaSourceThread;
        private final Deque<RetrievalTask> pendingRetrievals;
        private int referenceCount;

        private void maybeStartNewRetrieval() {
            if (!this.pendingRetrievals.isEmpty() && this.referenceCount - this.pendingRetrievals.size() < MAX_PARALLEL_RETRIEVALS.get()) {
                this.pendingRetrievals.removeFirst().start();
            }
        }

        public synchronized Looper addWorker() {
            try {
                if (this.mediaSourceThread == null) {
                    P3.v.checkState(this.referenceCount == 0);
                    HandlerThread handlerThread = new HandlerThread("ExoPlayer:MetadataRetriever");
                    this.mediaSourceThread = handlerThread;
                    handlerThread.start();
                }
                this.referenceCount++;
            } catch (Throwable th) {
                throw th;
            }
            return ((HandlerThread) P3.v.checkNotNull(this.mediaSourceThread)).getLooper();
        }

        public synchronized void removeWorker() {
            try {
                int i2 = this.referenceCount - 1;
                this.referenceCount = i2;
                if (i2 == 0) {
                    ((HandlerThread) P3.v.checkNotNull(this.mediaSourceThread)).quit();
                    this.mediaSourceThread = null;
                    this.pendingRetrievals.clear();
                } else {
                    maybeStartNewRetrieval();
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        public synchronized void startRetrieval(RetrievalTask retrievalTask) {
            this.pendingRetrievals.addLast(retrievalTask);
            maybeStartNewRetrieval();
        }

        private SharedWorkerThread() {
            this.pendingRetrievals = new ArrayDeque();
        }
    }

    public MetadataRetrieverInternal(MediaItem mediaItem, MediaSource.Factory factory, Clock clock) {
        this.mediaItem = mediaItem;
        this.mediaSourceFactory = factory;
        this.clock = clock;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$close$0() {
        synchronized (this.lock) {
            try {
                RetrievalTask retrievalTask = this.retrievalTask;
                if (retrievalTask != null) {
                    retrievalTask.release();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startPreparation$1(TrackGroupArray trackGroupArray, Timeline timeline) {
        synchronized (this.lock) {
            ((V3.M) P3.v.checkNotNull(this.preparationFuture)).set(new InternalResult(trackGroupArray, timeline));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startPreparation$2(Exception exc) {
        synchronized (this.lock) {
            ((V3.M) P3.v.checkNotNull(this.preparationFuture)).setException(exc);
        }
    }

    private void startPreparation() {
        if (this.preparationFuture == null) {
            this.preparationFuture = V3.M.create();
            RetrievalTask retrievalTask = new RetrievalTask(this.mediaSourceFactory, this.mediaItem, this.clock, new V(this), new V(this));
            this.retrievalTask = retrievalTask;
            retrievalTask.queueRetrieval();
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.lock) {
            try {
                if (this.released) {
                    return;
                }
                this.released = true;
                V3.A.whenAllComplete(this.allFutures).run(new RunnableC0573c(this, 4), com.google.common.util.concurrent.g.directExecutor());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public V3.F retrieveDurationUs() {
        synchronized (this.lock) {
            try {
                if (this.released) {
                    return V3.A.immediateFailedFuture(new IllegalStateException("Retriever is released."));
                }
                V3.F retrieveTimeline = retrieveTimeline();
                final V3.M create = V3.M.create();
                this.allFutures.add(create);
                V3.A.addCallback(retrieveTimeline, new V3.x() { // from class: androidx.media3.exoplayer.MetadataRetrieverInternal.3
                    @Override // V3.x
                    public void onFailure(Throwable th) {
                        create.setException(th);
                    }

                    @Override // V3.x
                    public void onSuccess(Timeline timeline) {
                        if (timeline.isEmpty()) {
                            create.set(Long.valueOf(androidx.media3.common.C.TIME_UNSET));
                        } else {
                            create.set(Long.valueOf(timeline.getWindow(0, new Timeline.Window()).getDurationUs()));
                        }
                    }
                }, com.google.common.util.concurrent.g.directExecutor());
                return create;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public V3.F retrieveTimeline() {
        synchronized (this.lock) {
            try {
                if (this.released) {
                    return V3.A.immediateFailedFuture(new IllegalStateException("Retriever is released."));
                }
                startPreparation();
                final V3.M create = V3.M.create();
                this.allFutures.add(create);
                V3.A.addCallback((V3.F) P3.v.checkNotNull(this.preparationFuture), new V3.x() { // from class: androidx.media3.exoplayer.MetadataRetrieverInternal.2
                    @Override // V3.x
                    public void onFailure(Throwable th) {
                        create.setException(th);
                    }

                    @Override // V3.x
                    public void onSuccess(InternalResult internalResult) {
                        create.set(internalResult.timeline);
                    }
                }, com.google.common.util.concurrent.g.directExecutor());
                return create;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public V3.F retrieveTrackGroups() {
        synchronized (this.lock) {
            try {
                if (this.released) {
                    return V3.A.immediateFailedFuture(new IllegalStateException("Retriever is released."));
                }
                startPreparation();
                final V3.M create = V3.M.create();
                this.allFutures.add(create);
                V3.A.addCallback((V3.F) P3.v.checkNotNull(this.preparationFuture), new V3.x() { // from class: androidx.media3.exoplayer.MetadataRetrieverInternal.1
                    @Override // V3.x
                    public void onFailure(Throwable th) {
                        create.setException(th);
                    }

                    @Override // V3.x
                    public void onSuccess(InternalResult internalResult) {
                        create.set(internalResult.trackGroups);
                    }
                }, com.google.common.util.concurrent.g.directExecutor());
                return create;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
