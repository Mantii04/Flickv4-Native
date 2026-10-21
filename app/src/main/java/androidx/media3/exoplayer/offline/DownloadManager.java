package androidx.media3.exoplayer.offline;

import P3.v;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.cache.Cache;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.exoplayer.offline.Downloader;
import androidx.media3.exoplayer.scheduler.Requirements;
import androidx.media3.exoplayer.scheduler.RequirementsWatcher;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
import t0.InterfaceC1645a;

@UnstableApi
/* loaded from: classes.dex */
public final class DownloadManager {
    public static final int DEFAULT_MAX_PARALLEL_DOWNLOADS = 3;
    public static final int DEFAULT_MIN_RETRY_COUNT = 5;
    public static final Requirements DEFAULT_REQUIREMENTS = new Requirements(1);
    private static final int MSG_ADD_DOWNLOAD = 7;
    private static final int MSG_CONTENT_LENGTH_CHANGED = 11;
    private static final int MSG_DOWNLOAD_UPDATE = 3;
    private static final int MSG_INITIALIZE = 1;
    private static final int MSG_INITIALIZED = 1;
    private static final int MSG_PROCESSED = 2;
    private static final int MSG_RELEASE = 13;
    private static final int MSG_REMOVE_ALL_DOWNLOADS = 9;
    private static final int MSG_REMOVE_DOWNLOAD = 8;
    private static final int MSG_SET_DOWNLOADS_PAUSED = 2;
    private static final int MSG_SET_MAX_PARALLEL_DOWNLOADS = 5;
    private static final int MSG_SET_MIN_RETRY_COUNT = 6;
    private static final int MSG_SET_NOT_MET_REQUIREMENTS = 3;
    private static final int MSG_SET_STOP_REASON = 4;
    private static final int MSG_TASK_STOPPED = 10;
    private static final int MSG_UPDATE_PROGRESS = 12;
    private static final String TAG = "DownloadManager";
    private int activeTaskCount;
    private final Handler applicationHandler;
    private final Context context;
    private final WritableDownloadIndex downloadIndex;
    private List<Download> downloads;
    private boolean downloadsPaused;
    private boolean initialized;
    private final InternalHandler internalHandler;
    private final CopyOnWriteArraySet<Listener> listeners;
    private int maxParallelDownloads;
    private int minRetryCount;
    private int notMetRequirements;
    private int pendingMessages;
    private final RequirementsWatcher.Listener requirementsListener;
    private RequirementsWatcher requirementsWatcher;
    private boolean waitingForRequirements;

    public static final class DownloadUpdate {
        public final Download download;
        public final List<Download> downloads;
        public final Exception finalException;
        public final boolean isRemove;

        public DownloadUpdate(Download download, boolean z6, List<Download> list, Exception exc) {
            this.download = download;
            this.isRemove = z6;
            this.downloads = list;
            this.finalException = exc;
        }
    }

    public interface Listener {
        void onDownloadChanged(DownloadManager downloadManager, Download download, Exception exc);

        void onDownloadRemoved(DownloadManager downloadManager, Download download);

        void onDownloadsPausedChanged(DownloadManager downloadManager, boolean z6);

        void onIdle(DownloadManager downloadManager);

        void onInitialized(DownloadManager downloadManager);

        void onRequirementsStateChanged(DownloadManager downloadManager, Requirements requirements, int i2);

        void onWaitingForRequirementsChanged(DownloadManager downloadManager, boolean z6);
    }

    public static class Task extends Thread implements Downloader.ProgressListener {
        private long contentLength;
        private final DownloadProgress downloadProgress;
        private final Downloader downloader;
        private Exception finalException;
        private volatile InternalHandler internalHandler;
        private volatile boolean isCanceled;
        private final boolean isRemove;
        private final int minRetryCount;
        private final DownloadRequest request;

        private static int getRetryDelayMillis(int i2) {
            return Math.min((i2 - 1) * 1000, 5000);
        }

        public void cancel(boolean z6) {
            if (z6) {
                this.internalHandler = null;
            }
            if (this.isCanceled) {
                return;
            }
            this.isCanceled = true;
            this.downloader.cancel();
            interrupt();
        }

        @Override // androidx.media3.exoplayer.offline.Downloader.ProgressListener
        public void onProgress(long j7, long j8, float f3) {
            this.downloadProgress.bytesDownloaded = j8;
            this.downloadProgress.percentDownloaded = f3;
            if (j7 != this.contentLength) {
                this.contentLength = j7;
                InternalHandler internalHandler = this.internalHandler;
                if (internalHandler != null) {
                    internalHandler.obtainMessage(11, (int) (j7 >> 32), (int) j7, this).sendToTarget();
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                if (this.isRemove) {
                    this.downloader.remove();
                } else {
                    long j7 = -1;
                    int i2 = 0;
                    while (!this.isCanceled) {
                        try {
                            this.downloader.download(this);
                            break;
                        } catch (IOException e3) {
                            if (!this.isCanceled) {
                                long j8 = this.downloadProgress.bytesDownloaded;
                                if (j8 != j7) {
                                    i2 = 0;
                                    j7 = j8;
                                }
                                i2++;
                                if (i2 > this.minRetryCount) {
                                    throw e3;
                                }
                                Thread.sleep(getRetryDelayMillis(i2));
                            }
                        }
                    }
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (Exception e7) {
                this.finalException = e7;
            }
            InternalHandler internalHandler = this.internalHandler;
            if (internalHandler != null) {
                internalHandler.obtainMessage(10, this).sendToTarget();
            }
        }

        private Task(DownloadRequest downloadRequest, Downloader downloader, DownloadProgress downloadProgress, boolean z6, int i2, InternalHandler internalHandler) {
            this.request = downloadRequest;
            this.downloader = downloader;
            this.downloadProgress = downloadProgress;
            this.isRemove = z6;
            this.minRetryCount = i2;
            this.internalHandler = internalHandler;
            this.contentLength = -1L;
        }
    }

    public DownloadManager(Context context, InterfaceC1645a interfaceC1645a, Cache cache, DataSource.Factory factory, Executor executor) {
        this(context, new DefaultDownloadIndex(interfaceC1645a), new DefaultDownloaderFactory(new CacheDataSource.Factory().setCache(cache).setUpstreamDataSourceFactory(factory), executor));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMainMessage(Message message) {
        int i2 = message.what;
        if (i2 == 1) {
            onInitialized((List) message.obj);
        } else if (i2 == 2) {
            onMessageProcessed(message.arg1, message.arg2);
        } else {
            if (i2 != 3) {
                throw new IllegalStateException();
            }
            onDownloadUpdate((DownloadUpdate) message.obj);
        }
        return true;
    }

    public static Download mergeRequest(Download download, DownloadRequest downloadRequest, int i2, long j7) {
        int i7 = download.state;
        long j8 = (i7 == 5 || download.isTerminalState()) ? j7 : download.startTimeMs;
        int i8 = 7;
        if (i7 != 5 && i7 != 7) {
            i8 = i2 != 0 ? 1 : 0;
        }
        return new Download(download.request.copyWithMergedRequest(downloadRequest), i8, j8, j7, -1L, i2, 0);
    }

    private void notifyWaitingForRequirementsChanged() {
        Iterator<Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onWaitingForRequirementsChanged(this, this.waitingForRequirements);
        }
    }

    private void onDownloadUpdate(DownloadUpdate downloadUpdate) {
        this.downloads = Collections.unmodifiableList(downloadUpdate.downloads);
        Download download = downloadUpdate.download;
        boolean updateWaitingForRequirements = updateWaitingForRequirements();
        if (downloadUpdate.isRemove) {
            Iterator<Listener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onDownloadRemoved(this, download);
            }
        } else {
            Iterator<Listener> it2 = this.listeners.iterator();
            while (it2.hasNext()) {
                it2.next().onDownloadChanged(this, download, downloadUpdate.finalException);
            }
        }
        if (updateWaitingForRequirements) {
            notifyWaitingForRequirementsChanged();
        }
    }

    private void onInitialized(List<Download> list) {
        this.initialized = true;
        this.downloads = Collections.unmodifiableList(list);
        boolean updateWaitingForRequirements = updateWaitingForRequirements();
        Iterator<Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onInitialized(this);
        }
        if (updateWaitingForRequirements) {
            notifyWaitingForRequirementsChanged();
        }
    }

    private void onMessageProcessed(int i2, int i7) {
        this.pendingMessages -= i2;
        this.activeTaskCount = i7;
        if (isIdle()) {
            Iterator<Listener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onIdle(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRequirementsStateChanged(RequirementsWatcher requirementsWatcher, int i2) {
        Requirements requirements = requirementsWatcher.getRequirements();
        if (this.notMetRequirements != i2) {
            this.notMetRequirements = i2;
            this.pendingMessages++;
            this.internalHandler.obtainMessage(3, i2, 0).sendToTarget();
        }
        boolean updateWaitingForRequirements = updateWaitingForRequirements();
        Iterator<Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onRequirementsStateChanged(this, requirements, i2);
        }
        if (updateWaitingForRequirements) {
            notifyWaitingForRequirementsChanged();
        }
    }

    private void setDownloadsPaused(boolean z6) {
        if (this.downloadsPaused == z6) {
            return;
        }
        this.downloadsPaused = z6;
        this.pendingMessages++;
        this.internalHandler.obtainMessage(2, z6 ? 1 : 0, 0).sendToTarget();
        boolean updateWaitingForRequirements = updateWaitingForRequirements();
        Iterator<Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDownloadsPausedChanged(this, z6);
        }
        if (updateWaitingForRequirements) {
            notifyWaitingForRequirementsChanged();
        }
    }

    private boolean updateWaitingForRequirements() {
        boolean z6;
        if (!this.downloadsPaused && this.notMetRequirements != 0) {
            for (int i2 = 0; i2 < this.downloads.size(); i2++) {
                if (this.downloads.get(i2).state == 0) {
                    z6 = true;
                    break;
                }
            }
        }
        z6 = false;
        boolean z7 = this.waitingForRequirements != z6;
        this.waitingForRequirements = z6;
        return z7;
    }

    public void addDownload(DownloadRequest downloadRequest) {
        addDownload(downloadRequest, 0);
    }

    public void addListener(Listener listener) {
        v.checkNotNull(listener);
        this.listeners.add(listener);
    }

    public Looper getApplicationLooper() {
        return this.applicationHandler.getLooper();
    }

    public List<Download> getCurrentDownloads() {
        return this.downloads;
    }

    public DownloadIndex getDownloadIndex() {
        return this.downloadIndex;
    }

    public boolean getDownloadsPaused() {
        return this.downloadsPaused;
    }

    public int getMaxParallelDownloads() {
        return this.maxParallelDownloads;
    }

    public int getMinRetryCount() {
        return this.minRetryCount;
    }

    public int getNotMetRequirements() {
        return this.notMetRequirements;
    }

    public Requirements getRequirements() {
        return this.requirementsWatcher.getRequirements();
    }

    public boolean isIdle() {
        return this.activeTaskCount == 0 && this.pendingMessages == 0;
    }

    public boolean isInitialized() {
        return this.initialized;
    }

    public boolean isWaitingForRequirements() {
        return this.waitingForRequirements;
    }

    public void pauseDownloads() {
        setDownloadsPaused(true);
    }

    public void release() {
        synchronized (this.internalHandler) {
            try {
                InternalHandler internalHandler = this.internalHandler;
                if (internalHandler.released) {
                    return;
                }
                internalHandler.sendEmptyMessage(13);
                boolean z6 = false;
                while (true) {
                    InternalHandler internalHandler2 = this.internalHandler;
                    if (internalHandler2.released) {
                        break;
                    }
                    try {
                        internalHandler2.wait();
                    } catch (InterruptedException unused) {
                        z6 = true;
                    }
                }
                if (z6) {
                    Thread.currentThread().interrupt();
                }
                this.applicationHandler.removeCallbacksAndMessages(null);
                this.requirementsWatcher.stop();
                this.downloads = Collections.EMPTY_LIST;
                this.pendingMessages = 0;
                this.activeTaskCount = 0;
                this.initialized = false;
                this.notMetRequirements = 0;
                this.waitingForRequirements = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void removeAllDownloads() {
        this.pendingMessages++;
        this.internalHandler.obtainMessage(9).sendToTarget();
    }

    public void removeDownload(String str) {
        this.pendingMessages++;
        this.internalHandler.obtainMessage(8, str).sendToTarget();
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    public void resumeDownloads() {
        setDownloadsPaused(false);
    }

    public void setMaxParallelDownloads(int i2) {
        v.checkArgument(i2 > 0);
        if (this.maxParallelDownloads == i2) {
            return;
        }
        this.maxParallelDownloads = i2;
        this.pendingMessages++;
        this.internalHandler.obtainMessage(5, i2, 0).sendToTarget();
    }

    public void setMinRetryCount(int i2) {
        v.checkArgument(i2 >= 0);
        if (this.minRetryCount == i2) {
            return;
        }
        this.minRetryCount = i2;
        this.pendingMessages++;
        this.internalHandler.obtainMessage(6, i2, 0).sendToTarget();
    }

    public void setRequirements(Requirements requirements) {
        if (requirements.equals(this.requirementsWatcher.getRequirements())) {
            return;
        }
        this.requirementsWatcher.stop();
        RequirementsWatcher requirementsWatcher = new RequirementsWatcher(this.context, this.requirementsListener, requirements);
        this.requirementsWatcher = requirementsWatcher;
        onRequirementsStateChanged(this.requirementsWatcher, requirementsWatcher.start());
    }

    public void setStopReason(String str, int i2) {
        this.pendingMessages++;
        this.internalHandler.obtainMessage(4, i2, 0, str).sendToTarget();
    }

    public void addDownload(DownloadRequest downloadRequest, int i2) {
        this.pendingMessages++;
        this.internalHandler.obtainMessage(7, i2, 0, downloadRequest).sendToTarget();
    }

    public DownloadManager(Context context, WritableDownloadIndex writableDownloadIndex, DownloaderFactory downloaderFactory) {
        this.context = context.getApplicationContext();
        this.downloadIndex = writableDownloadIndex;
        this.maxParallelDownloads = 3;
        this.minRetryCount = 5;
        this.downloadsPaused = true;
        this.downloads = Collections.EMPTY_LIST;
        this.listeners = new CopyOnWriteArraySet<>();
        Handler createHandlerForCurrentOrMainLooper = Util.createHandlerForCurrentOrMainLooper(new d(this, 1));
        this.applicationHandler = createHandlerForCurrentOrMainLooper;
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:DownloadManager");
        handlerThread.start();
        InternalHandler internalHandler = new InternalHandler(handlerThread, writableDownloadIndex, downloaderFactory, createHandlerForCurrentOrMainLooper, this.maxParallelDownloads, this.minRetryCount, this.downloadsPaused);
        this.internalHandler = internalHandler;
        e eVar = new e(this);
        this.requirementsListener = eVar;
        RequirementsWatcher requirementsWatcher = new RequirementsWatcher(context, eVar, DEFAULT_REQUIREMENTS);
        this.requirementsWatcher = requirementsWatcher;
        int start = requirementsWatcher.start();
        this.notMetRequirements = start;
        this.pendingMessages = 1;
        internalHandler.obtainMessage(1, start, 0).sendToTarget();
    }

    public static final class InternalHandler extends Handler {
        private static final int UPDATE_PROGRESS_INTERVAL_MS = 5000;
        private int activeDownloadTaskCount;
        private final HashMap<String, Task> activeTasks;
        private final WritableDownloadIndex downloadIndex;
        private final DownloaderFactory downloaderFactory;
        private final ArrayList<Download> downloads;
        private boolean downloadsPaused;
        private boolean hasActiveRemoveTask;
        private final Handler mainHandler;
        private int maxParallelDownloads;
        private int minRetryCount;
        private int notMetRequirements;
        public boolean released;
        private final HandlerThread thread;

        public InternalHandler(HandlerThread handlerThread, WritableDownloadIndex writableDownloadIndex, DownloaderFactory downloaderFactory, Handler handler, int i2, int i7, boolean z6) {
            super(handlerThread.getLooper());
            this.thread = handlerThread;
            this.downloadIndex = writableDownloadIndex;
            this.downloaderFactory = downloaderFactory;
            this.mainHandler = handler;
            this.maxParallelDownloads = i2;
            this.minRetryCount = i7;
            this.downloadsPaused = z6;
            this.downloads = new ArrayList<>();
            this.activeTasks = new HashMap<>();
        }

        private void addDownload(DownloadRequest downloadRequest, int i2) {
            Download download = getDownload(downloadRequest.id, true);
            long currentTimeMillis = System.currentTimeMillis();
            if (download != null) {
                putDownload(DownloadManager.mergeRequest(download, downloadRequest, i2, currentTimeMillis));
            } else {
                putDownload(new Download(downloadRequest, i2 == 0 ? 0 : 1, currentTimeMillis, currentTimeMillis, -1L, i2, 0));
            }
            syncTasks();
        }

        private boolean canDownloadsRun() {
            return !this.downloadsPaused && this.notMetRequirements == 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int compareStartTimes(Download download, Download download2) {
            return Long.compare(download.startTimeMs, download2.startTimeMs);
        }

        private static Download copyDownloadWithState(Download download, int i2, int i7) {
            return new Download(download.request, i2, download.startTimeMs, System.currentTimeMillis(), download.contentLength, i7, 0, download.progress);
        }

        private Download getDownload(String str, boolean z6) {
            int downloadIndex = getDownloadIndex(str);
            if (downloadIndex != -1) {
                return this.downloads.get(downloadIndex);
            }
            if (!z6) {
                return null;
            }
            try {
                return this.downloadIndex.getDownload(str);
            } catch (IOException e3) {
                Log.e(DownloadManager.TAG, "Failed to load download: " + str, e3);
                return null;
            }
        }

        private int getDownloadIndex(String str) {
            for (int i2 = 0; i2 < this.downloads.size(); i2++) {
                if (this.downloads.get(i2).request.id.equals(str)) {
                    return i2;
                }
            }
            return -1;
        }

        private void initialize(int i2) {
            this.notMetRequirements = i2;
            DownloadCursor downloadCursor = null;
            try {
                try {
                    this.downloadIndex.setDownloadingStatesToQueued();
                    downloadCursor = this.downloadIndex.getDownloads(0, 1, 2, 5, 7);
                    while (downloadCursor.moveToNext()) {
                        this.downloads.add(downloadCursor.getDownload());
                    }
                } catch (IOException e3) {
                    Log.e(DownloadManager.TAG, "Failed to load index.", e3);
                    this.downloads.clear();
                }
                this.mainHandler.obtainMessage(1, new ArrayList(this.downloads)).sendToTarget();
                syncTasks();
            } finally {
                Util.closeQuietly(downloadCursor);
            }
        }

        private void onContentLengthChanged(Task task, long j7) {
            Download download = (Download) v.checkNotNull(getDownload(task.request.id, false));
            if (j7 == download.contentLength || j7 == -1) {
                return;
            }
            putDownload(new Download(download.request, download.state, download.startTimeMs, System.currentTimeMillis(), j7, download.stopReason, download.failureReason, download.progress));
        }

        private void onDownloadTaskStopped(Download download, Exception exc) {
            Download download2 = new Download(download.request, exc == null ? 3 : 4, download.startTimeMs, System.currentTimeMillis(), download.contentLength, download.stopReason, exc == null ? 0 : 1, download.progress);
            this.downloads.remove(getDownloadIndex(download2.request.id));
            try {
                this.downloadIndex.putDownload(download2);
            } catch (IOException e3) {
                Log.e(DownloadManager.TAG, "Failed to update index.", e3);
            }
            this.mainHandler.obtainMessage(3, new DownloadUpdate(download2, false, new ArrayList(this.downloads), exc)).sendToTarget();
        }

        private void onRemoveTaskStopped(Download download) {
            if (download.state == 7) {
                int i2 = download.stopReason;
                putDownloadWithState(download, i2 == 0 ? 0 : 1, i2);
                syncTasks();
            } else {
                this.downloads.remove(getDownloadIndex(download.request.id));
                try {
                    this.downloadIndex.removeDownload(download.request.id);
                } catch (IOException unused) {
                    Log.e(DownloadManager.TAG, "Failed to remove from database");
                }
                this.mainHandler.obtainMessage(3, new DownloadUpdate(download, true, new ArrayList(this.downloads), null)).sendToTarget();
            }
        }

        private void onTaskStopped(Task task) {
            String str = task.request.id;
            this.activeTasks.remove(str);
            boolean z6 = task.isRemove;
            if (z6) {
                this.hasActiveRemoveTask = false;
            } else {
                int i2 = this.activeDownloadTaskCount - 1;
                this.activeDownloadTaskCount = i2;
                if (i2 == 0) {
                    removeMessages(12);
                }
            }
            if (task.isCanceled) {
                syncTasks();
                return;
            }
            Exception exc = task.finalException;
            if (exc != null) {
                Log.e(DownloadManager.TAG, "Task failed: " + task.request + ", " + z6, exc);
            }
            Download download = (Download) v.checkNotNull(getDownload(str, false));
            int i7 = download.state;
            if (i7 == 2) {
                v.checkState(!z6);
                onDownloadTaskStopped(download, exc);
            } else {
                if (i7 != 5 && i7 != 7) {
                    throw new IllegalStateException();
                }
                v.checkState(z6);
                onRemoveTaskStopped(download);
            }
            syncTasks();
        }

        private Download putDownload(Download download) {
            int i2 = download.state;
            v.checkState((i2 == 3 || i2 == 4) ? false : true);
            int downloadIndex = getDownloadIndex(download.request.id);
            if (downloadIndex == -1) {
                this.downloads.add(download);
                Collections.sort(this.downloads, new f());
            } else {
                boolean z6 = download.startTimeMs != this.downloads.get(downloadIndex).startTimeMs;
                this.downloads.set(downloadIndex, download);
                if (z6) {
                    Collections.sort(this.downloads, new f());
                }
            }
            try {
                this.downloadIndex.putDownload(download);
            } catch (IOException e3) {
                Log.e(DownloadManager.TAG, "Failed to update index.", e3);
            }
            this.mainHandler.obtainMessage(3, new DownloadUpdate(download, false, new ArrayList(this.downloads), null)).sendToTarget();
            return download;
        }

        private Download putDownloadWithState(Download download, int i2, int i7) {
            v.checkState((i2 == 3 || i2 == 4) ? false : true);
            return putDownload(copyDownloadWithState(download, i2, i7));
        }

        private void release() {
            Iterator<Task> it = this.activeTasks.values().iterator();
            while (it.hasNext()) {
                it.next().cancel(true);
            }
            try {
                this.downloadIndex.setDownloadingStatesToQueued();
            } catch (IOException e3) {
                Log.e(DownloadManager.TAG, "Failed to update index.", e3);
            }
            this.downloads.clear();
            this.thread.quit();
            synchronized (this) {
                this.released = true;
                notifyAll();
            }
        }

        private void removeAllDownloads() {
            ArrayList arrayList = new ArrayList();
            try {
                DownloadCursor downloads = this.downloadIndex.getDownloads(3, 4);
                while (downloads.moveToNext()) {
                    try {
                        arrayList.add(downloads.getDownload());
                    } finally {
                    }
                }
                downloads.close();
            } catch (IOException unused) {
                Log.e(DownloadManager.TAG, "Failed to load downloads.");
            }
            for (int i2 = 0; i2 < this.downloads.size(); i2++) {
                ArrayList<Download> arrayList2 = this.downloads;
                arrayList2.set(i2, copyDownloadWithState(arrayList2.get(i2), 5, 0));
            }
            for (int i7 = 0; i7 < arrayList.size(); i7++) {
                this.downloads.add(copyDownloadWithState((Download) arrayList.get(i7), 5, 0));
            }
            Collections.sort(this.downloads, new f());
            try {
                this.downloadIndex.setStatesToRemoving();
            } catch (IOException e3) {
                Log.e(DownloadManager.TAG, "Failed to update index.", e3);
            }
            ArrayList arrayList3 = new ArrayList(this.downloads);
            for (int i8 = 0; i8 < this.downloads.size(); i8++) {
                this.mainHandler.obtainMessage(3, new DownloadUpdate(this.downloads.get(i8), false, arrayList3, null)).sendToTarget();
            }
            syncTasks();
        }

        private void removeDownload(String str) {
            Download download = getDownload(str, true);
            if (download != null) {
                putDownloadWithState(download, 5, 0);
                syncTasks();
            } else {
                Log.e(DownloadManager.TAG, "Failed to remove nonexistent download: " + str);
            }
        }

        private void setDownloadsPaused(boolean z6) {
            this.downloadsPaused = z6;
            syncTasks();
        }

        private void setMaxParallelDownloads(int i2) {
            this.maxParallelDownloads = i2;
            syncTasks();
        }

        private void setMinRetryCount(int i2) {
            this.minRetryCount = i2;
        }

        private void setNotMetRequirements(int i2) {
            this.notMetRequirements = i2;
            syncTasks();
        }

        private void setStopReason(String str, int i2) {
            if (str == null) {
                for (int i7 = 0; i7 < this.downloads.size(); i7++) {
                    setStopReason(this.downloads.get(i7), i2);
                }
                try {
                    this.downloadIndex.setStopReason(i2);
                } catch (IOException e3) {
                    Log.e(DownloadManager.TAG, "Failed to set manual stop reason", e3);
                }
            } else {
                Download download = getDownload(str, false);
                if (download != null) {
                    setStopReason(download, i2);
                } else {
                    try {
                        this.downloadIndex.setStopReason(str, i2);
                    } catch (IOException e7) {
                        Log.e(DownloadManager.TAG, "Failed to set manual stop reason: ".concat(str), e7);
                    }
                }
            }
            syncTasks();
        }

        private void syncDownloadingDownload(Task task, Download download, int i2) {
            v.checkState(!task.isRemove);
            if (!canDownloadsRun() || i2 >= this.maxParallelDownloads) {
                putDownloadWithState(download, 0, 0);
                task.cancel(false);
            }
        }

        private Task syncQueuedDownload(Task task, Download download) {
            if (task != null) {
                v.checkState(!task.isRemove);
                task.cancel(false);
                return task;
            }
            if (!canDownloadsRun() || this.activeDownloadTaskCount >= this.maxParallelDownloads) {
                return null;
            }
            Download putDownloadWithState = putDownloadWithState(download, 2, 0);
            Task task2 = new Task(putDownloadWithState.request, this.downloaderFactory.createDownloader(putDownloadWithState.request), putDownloadWithState.progress, false, this.minRetryCount, this);
            this.activeTasks.put(putDownloadWithState.request.id, task2);
            int i2 = this.activeDownloadTaskCount;
            this.activeDownloadTaskCount = i2 + 1;
            if (i2 == 0) {
                sendEmptyMessageDelayed(12, 5000L);
            }
            task2.start();
            return task2;
        }

        private void syncRemovingDownload(Task task, Download download) {
            if (task != null) {
                if (task.isRemove) {
                    return;
                }
                task.cancel(false);
            } else {
                if (this.hasActiveRemoveTask) {
                    return;
                }
                Task task2 = new Task(download.request, this.downloaderFactory.createDownloader(download.request), download.progress, true, this.minRetryCount, this);
                this.activeTasks.put(download.request.id, task2);
                this.hasActiveRemoveTask = true;
                task2.start();
            }
        }

        private void syncStoppedDownload(Task task) {
            if (task != null) {
                v.checkState(!task.isRemove);
                task.cancel(false);
            }
        }

        private void syncTasks() {
            int i2 = 0;
            for (int i7 = 0; i7 < this.downloads.size(); i7++) {
                Download download = this.downloads.get(i7);
                Task task = this.activeTasks.get(download.request.id);
                int i8 = download.state;
                if (i8 == 0) {
                    task = syncQueuedDownload(task, download);
                } else if (i8 == 1) {
                    syncStoppedDownload(task);
                } else if (i8 == 2) {
                    v.checkNotNull(task);
                    syncDownloadingDownload(task, download, i2);
                } else {
                    if (i8 != 5 && i8 != 7) {
                        throw new IllegalStateException();
                    }
                    syncRemovingDownload(task, download);
                }
                if (task != null && !task.isRemove) {
                    i2++;
                }
            }
        }

        private void updateProgress() {
            for (int i2 = 0; i2 < this.downloads.size(); i2++) {
                Download download = this.downloads.get(i2);
                if (download.state == 2) {
                    try {
                        this.downloadIndex.putDownload(download);
                    } catch (IOException e3) {
                        Log.e(DownloadManager.TAG, "Failed to update index.", e3);
                    }
                }
            }
            sendEmptyMessageDelayed(12, 5000L);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = 0;
            switch (message.what) {
                case 1:
                    initialize(message.arg1);
                    i2 = 1;
                    this.mainHandler.obtainMessage(2, i2, this.activeTasks.size()).sendToTarget();
                    return;
                case 2:
                    setDownloadsPaused(message.arg1 != 0);
                    i2 = 1;
                    this.mainHandler.obtainMessage(2, i2, this.activeTasks.size()).sendToTarget();
                    return;
                case 3:
                    setNotMetRequirements(message.arg1);
                    i2 = 1;
                    this.mainHandler.obtainMessage(2, i2, this.activeTasks.size()).sendToTarget();
                    return;
                case 4:
                    setStopReason((String) message.obj, message.arg1);
                    i2 = 1;
                    this.mainHandler.obtainMessage(2, i2, this.activeTasks.size()).sendToTarget();
                    return;
                case 5:
                    setMaxParallelDownloads(message.arg1);
                    i2 = 1;
                    this.mainHandler.obtainMessage(2, i2, this.activeTasks.size()).sendToTarget();
                    return;
                case 6:
                    setMinRetryCount(message.arg1);
                    i2 = 1;
                    this.mainHandler.obtainMessage(2, i2, this.activeTasks.size()).sendToTarget();
                    return;
                case 7:
                    addDownload((DownloadRequest) message.obj, message.arg1);
                    i2 = 1;
                    this.mainHandler.obtainMessage(2, i2, this.activeTasks.size()).sendToTarget();
                    return;
                case 8:
                    removeDownload((String) message.obj);
                    i2 = 1;
                    this.mainHandler.obtainMessage(2, i2, this.activeTasks.size()).sendToTarget();
                    return;
                case 9:
                    removeAllDownloads();
                    i2 = 1;
                    this.mainHandler.obtainMessage(2, i2, this.activeTasks.size()).sendToTarget();
                    return;
                case 10:
                    onTaskStopped((Task) message.obj);
                    this.mainHandler.obtainMessage(2, i2, this.activeTasks.size()).sendToTarget();
                    return;
                case 11:
                    onContentLengthChanged((Task) message.obj, Util.toLong(message.arg1, message.arg2));
                    return;
                case 12:
                    updateProgress();
                    return;
                case 13:
                    release();
                    return;
                default:
                    throw new IllegalStateException();
            }
        }

        private void setStopReason(Download download, int i2) {
            if (i2 == 0) {
                if (download.state == 1) {
                    putDownloadWithState(download, 0, 0);
                }
            } else if (i2 != download.stopReason) {
                int i7 = download.state;
                if (i7 == 0 || i7 == 2) {
                    i7 = 1;
                }
                putDownload(new Download(download.request, i7, download.startTimeMs, System.currentTimeMillis(), download.contentLength, i2, 0, download.progress));
            }
        }
    }
}
