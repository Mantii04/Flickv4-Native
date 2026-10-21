package L1;

import B1.C0023c;
import K1.InterfaceC0132x;
import K1.U;
import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.ApplicationExitInfo;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.WorkInfo$State;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.utils.ForceStopRunnable$BroadcastReceiver;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class h implements Runnable {

    /* renamed from: m, reason: collision with root package name */
    public static final String f1869m = B1.t.tagWithPrefix("ForceStopRunnable");

    /* renamed from: n, reason: collision with root package name */
    public static final long f1870n = TimeUnit.DAYS.toMillis(3650);

    /* renamed from: b, reason: collision with root package name */
    public final Context f1871b;

    /* renamed from: e, reason: collision with root package name */
    public final C1.G f1872e;

    /* renamed from: f, reason: collision with root package name */
    public final q f1873f;

    /* renamed from: j, reason: collision with root package name */
    public int f1874j = 0;

    public h(Context context, C1.G g7) {
        this.f1871b = context.getApplicationContext();
        this.f1872e = g7;
        this.f1873f = g7.getPreferenceUtils();
    }

    public static void a(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        int i2 = Build.VERSION.SDK_INT >= 31 ? 167772160 : androidx.media3.common.C.BUFFER_FLAG_FIRST_SAMPLE;
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) ForceStopRunnable$BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        PendingIntent broadcast = PendingIntent.getBroadcast(context, -1, intent, i2);
        long currentTimeMillis = System.currentTimeMillis() + f1870n;
        if (alarmManager != null) {
            alarmManager.setExact(0, currentTimeMillis, broadcast);
        }
    }

    public boolean cleanUp() {
        Context context = this.f1871b;
        C1.G g7 = this.f1872e;
        boolean reconcileJobs = F1.b.reconcileJobs(context, g7);
        WorkDatabase workDatabase = g7.getWorkDatabase();
        K1.F workSpecDao = workDatabase.workSpecDao();
        InterfaceC0132x workProgressDao = workDatabase.workProgressDao();
        workDatabase.beginTransaction();
        try {
            U u6 = (U) workSpecDao;
            List<K1.E> runningWork = u6.getRunningWork();
            boolean z6 = (runningWork == null || runningWork.isEmpty()) ? false : true;
            if (z6) {
                for (K1.E e3 : runningWork) {
                    u6.setState(WorkInfo$State.f8268b, e3.f1594a);
                    u6.markWorkSpecScheduled(e3.f1594a, -1L);
                }
            }
            ((K1.B) workProgressDao).deleteAll();
            workDatabase.setTransactionSuccessful();
            workDatabase.endTransaction();
            return z6 || reconcileJobs;
        } catch (Throwable th) {
            workDatabase.endTransaction();
            throw th;
        }
    }

    public void forceStopRunnable() {
        boolean cleanUp = cleanUp();
        boolean shouldRescheduleWorkers = shouldRescheduleWorkers();
        String str = f1869m;
        C1.G g7 = this.f1872e;
        if (shouldRescheduleWorkers) {
            B1.t.get().debug(str, "Rescheduling Workers.");
            g7.rescheduleEligibleWork();
            g7.getPreferenceUtils().setNeedsReschedule(false);
        } else if (isForceStopped()) {
            B1.t.get().debug(str, "Application was force-stopped, rescheduling.");
            g7.rescheduleEligibleWork();
            this.f1873f.setLastForceStopEventMillis(System.currentTimeMillis());
        } else if (cleanUp) {
            B1.t.get().debug(str, "Found unfinished work, scheduling it.");
            C1.u.schedule(g7.getConfiguration(), g7.getWorkDatabase(), g7.getSchedulers());
        }
    }

    @SuppressLint({"ClassVerificationFailure"})
    public boolean isForceStopped() {
        List historicalProcessExitReasons;
        int reason;
        long timestamp;
        Context context = this.f1871b;
        try {
            int i2 = Build.VERSION.SDK_INT;
            int i7 = i2 >= 31 ? 570425344 : androidx.media3.common.C.BUFFER_FLAG_LAST_SAMPLE;
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(context, (Class<?>) ForceStopRunnable$BroadcastReceiver.class));
            intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
            PendingIntent broadcast = PendingIntent.getBroadcast(context, -1, intent, i7);
            if (i2 >= 30) {
                if (broadcast != null) {
                    broadcast.cancel();
                }
                historicalProcessExitReasons = ((ActivityManager) context.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
                if (historicalProcessExitReasons != null && !historicalProcessExitReasons.isEmpty()) {
                    long lastForceStopEventMillis = this.f1873f.getLastForceStopEventMillis();
                    for (int i8 = 0; i8 < historicalProcessExitReasons.size(); i8++) {
                        ApplicationExitInfo g7 = AbstractC0149g.g(historicalProcessExitReasons.get(i8));
                        reason = g7.getReason();
                        if (reason == 10) {
                            timestamp = g7.getTimestamp();
                            if (timestamp >= lastForceStopEventMillis) {
                                return true;
                            }
                        }
                    }
                }
            } else if (broadcast == null) {
                a(context);
                return true;
            }
            return false;
        } catch (IllegalArgumentException e3) {
            e = e3;
            B1.t.get().warning(f1869m, "Ignoring exception", e);
            return true;
        } catch (SecurityException e7) {
            e = e7;
            B1.t.get().warning(f1869m, "Ignoring exception", e);
            return true;
        }
    }

    public boolean multiProcessChecks() {
        C0023c configuration = this.f1872e.getConfiguration();
        boolean isEmpty = TextUtils.isEmpty(configuration.getDefaultProcessName());
        String str = f1869m;
        if (isEmpty) {
            B1.t.get().debug(str, "The default process name was not specified.");
            return true;
        }
        boolean isDefaultProcess = r.isDefaultProcess(this.f1871b, configuration);
        B1.t.get().debug(str, "Is default app process = " + isDefaultProcess);
        return isDefaultProcess;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i2;
        String str = f1869m;
        C1.G g7 = this.f1872e;
        try {
            if (multiProcessChecks()) {
                while (true) {
                    try {
                        C1.A.migrateDatabase(this.f1871b);
                        B1.t.get().debug(str, "Performing cleanup operations.");
                        try {
                            forceStopRunnable();
                            break;
                        } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteDiskIOException | SQLiteTableLockedException e3) {
                            i2 = this.f1874j + 1;
                            this.f1874j = i2;
                            if (i2 >= 3) {
                                B1.t.get().error(str, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e3);
                                IllegalStateException illegalStateException = new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e3);
                                L.a initializationExceptionHandler = g7.getConfiguration().getInitializationExceptionHandler();
                                if (initializationExceptionHandler == null) {
                                    throw illegalStateException;
                                }
                                B1.t.get().debug(str, "Routing exception to the specified exception handler", illegalStateException);
                                initializationExceptionHandler.accept(illegalStateException);
                            } else {
                                B1.t.get().debug(str, "Retrying after " + (i2 * 300), e3);
                                sleep(((long) this.f1874j) * 300);
                            }
                        }
                        B1.t.get().debug(str, "Retrying after " + (i2 * 300), e3);
                        sleep(((long) this.f1874j) * 300);
                    } catch (SQLiteException e7) {
                        B1.t.get().error(str, "Unexpected SQLite exception during migrations");
                        IllegalStateException illegalStateException2 = new IllegalStateException("Unexpected SQLite exception during migrations", e7);
                        L.a initializationExceptionHandler2 = g7.getConfiguration().getInitializationExceptionHandler();
                        if (initializationExceptionHandler2 == null) {
                            throw illegalStateException2;
                        }
                        initializationExceptionHandler2.accept(illegalStateException2);
                    }
                }
            }
        } finally {
            g7.onForceStopRunnableCompleted();
        }
    }

    public boolean shouldRescheduleWorkers() {
        return this.f1872e.getPreferenceUtils().getNeedsReschedule();
    }

    public void sleep(long j7) {
        try {
            Thread.sleep(j7);
        } catch (InterruptedException unused) {
        }
    }
}
