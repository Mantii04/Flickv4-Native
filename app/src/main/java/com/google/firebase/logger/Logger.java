package com.google.firebase.logger;

import A.i;
import H5.l;
import android.util.Log;
import cz.msebera.android.httpclient.message.TokenParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import kotlin.text.StringsKt__StringsKt;

/* loaded from: classes2.dex */
public abstract class Logger {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<String, Logger> loggers = new ConcurrentHashMap<>();
    private boolean enabled;
    private Level minLevel;
    private final String tag;

    public static final class AndroidLogger extends Logger {

        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Level.values().length];
                try {
                    iArr[Level.VERBOSE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Level.DEBUG.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Level.INFO.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[Level.WARN.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[Level.ERROR.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AndroidLogger(String tag, boolean z6, Level minLevel) {
            super(tag, z6, minLevel, null);
            j.checkNotNullParameter(tag, "tag");
            j.checkNotNullParameter(minLevel, "minLevel");
        }

        @Override // com.google.firebase.logger.Logger
        public int log(Level level, String format, Object[] args, Throwable th) {
            j.checkNotNullParameter(level, "level");
            j.checkNotNullParameter(format, "format");
            j.checkNotNullParameter(args, "args");
            if (args.length != 0) {
                Object[] copyOf = Arrays.copyOf(args, args.length);
                format = String.format(format, Arrays.copyOf(copyOf, copyOf.length));
                j.checkNotNullExpressionValue(format, "format(format, *args)");
            }
            int i2 = WhenMappings.$EnumSwitchMapping$0[level.ordinal()];
            if (i2 == 1) {
                String tag = getTag();
                return th != null ? Log.v(tag, format, th) : Log.v(tag, format);
            }
            if (i2 == 2) {
                String tag2 = getTag();
                return th != null ? Log.d(tag2, format, th) : Log.d(tag2, format);
            }
            if (i2 == 3) {
                String tag3 = getTag();
                return th != null ? Log.i(tag3, format, th) : Log.i(tag3, format);
            }
            if (i2 == 4) {
                String tag4 = getTag();
                return th != null ? Log.w(tag4, format, th) : Log.w(tag4, format);
            }
            if (i2 != 5) {
                throw new NoWhenBranchMatchedException();
            }
            String tag5 = getTag();
            return th != null ? Log.e(tag5, format, th) : Log.e(tag5, format);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public static /* synthetic */ Logger getLogger$default(Companion companion, String str, boolean z6, Level level, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                z6 = true;
            }
            if ((i2 & 4) != 0) {
                level = Level.INFO;
            }
            return companion.getLogger(str, z6, level);
        }

        public static /* synthetic */ FakeLogger setupFakeLogger$default(Companion companion, String str, boolean z6, Level level, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                z6 = true;
            }
            if ((i2 & 4) != 0) {
                level = Level.DEBUG;
            }
            return companion.setupFakeLogger(str, z6, level);
        }

        public final Logger getLogger(String tag, boolean z6, Level minLevel) {
            Object putIfAbsent;
            j.checkNotNullParameter(tag, "tag");
            j.checkNotNullParameter(minLevel, "minLevel");
            ConcurrentHashMap concurrentHashMap = Logger.loggers;
            Object obj = concurrentHashMap.get(tag);
            if (obj == null && (putIfAbsent = concurrentHashMap.putIfAbsent(tag, (obj = new AndroidLogger(tag, z6, minLevel)))) != null) {
                obj = putIfAbsent;
            }
            j.checkNotNullExpressionValue(obj, "loggers.getOrPut(tag) { …tag, enabled, minLevel) }");
            return (Logger) obj;
        }

        public final FakeLogger setupFakeLogger(String tag, boolean z6, Level minLevel) {
            j.checkNotNullParameter(tag, "tag");
            j.checkNotNullParameter(minLevel, "minLevel");
            FakeLogger fakeLogger = new FakeLogger(tag, z6, minLevel);
            Logger.loggers.put(tag, fakeLogger);
            return fakeLogger;
        }

        private Companion() {
        }
    }

    public static final class FakeLogger extends Logger {
        private final List<String> record;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FakeLogger(String tag, boolean z6, Level minLevel) {
            super(tag, z6, minLevel, null);
            j.checkNotNullParameter(tag, "tag");
            j.checkNotNullParameter(minLevel, "minLevel");
            this.record = new ArrayList();
        }

        private final String toLogMessage(Level level, String str, Object[] objArr, Throwable th) {
            if (objArr.length != 0) {
                Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
                str = String.format(str, Arrays.copyOf(copyOf, copyOf.length));
                j.checkNotNullExpressionValue(str, "format(format, *args)");
            }
            if (th != null) {
                String str2 = level + TokenParser.SP + str + TokenParser.SP + Log.getStackTraceString(th);
                if (str2 != null) {
                    return str2;
                }
            }
            return level + TokenParser.SP + str;
        }

        public final void clearLogMessages() {
            this.record.clear();
        }

        public final boolean hasLogMessage(String message) {
            j.checkNotNullParameter(message, "message");
            List<String> list = this.record;
            if ((list instanceof Collection) && list.isEmpty()) {
                return false;
            }
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (StringsKt__StringsKt.contains$default((CharSequence) it.next(), (CharSequence) message, false, 2, (Object) null)) {
                    return true;
                }
            }
            return false;
        }

        public final boolean hasLogMessageThat(l predicate) {
            j.checkNotNullParameter(predicate, "predicate");
            List<String> list = this.record;
            if ((list instanceof Collection) && list.isEmpty()) {
                return false;
            }
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (((Boolean) predicate.invoke(it.next())).booleanValue()) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.firebase.logger.Logger
        public int log(Level level, String format, Object[] args, Throwable th) {
            j.checkNotNullParameter(level, "level");
            j.checkNotNullParameter(format, "format");
            j.checkNotNullParameter(args, "args");
            String logMessage = toLogMessage(level, format, args, th);
            System.out.println((Object) i.k("Log: ", logMessage));
            this.record.add(logMessage);
            return logMessage.length();
        }
    }

    public enum Level {
        VERBOSE(2),
        DEBUG(3),
        INFO(4),
        WARN(5),
        ERROR(6);

        private final int priority;

        Level(int i2) {
            this.priority = i2;
        }

        public final int getPriority$com_google_firebase_firebase_common() {
            return this.priority;
        }
    }

    public /* synthetic */ Logger(String str, boolean z6, Level level, g gVar) {
        this(str, z6, level);
    }

    public static /* synthetic */ int debug$default(Logger logger, String str, Object[] objArr, Throwable th, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: debug");
        }
        if ((i2 & 4) != 0) {
            th = null;
        }
        return logger.debug(str, objArr, th);
    }

    public static /* synthetic */ int error$default(Logger logger, String str, Object[] objArr, Throwable th, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: error");
        }
        if ((i2 & 4) != 0) {
            th = null;
        }
        return logger.error(str, objArr, th);
    }

    public static final Logger getLogger(String str, boolean z6, Level level) {
        return Companion.getLogger(str, z6, level);
    }

    public static /* synthetic */ int info$default(Logger logger, String str, Object[] objArr, Throwable th, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: info");
        }
        if ((i2 & 4) != 0) {
            th = null;
        }
        return logger.info(str, objArr, th);
    }

    private final int logIfAble(Level level, String str, Object[] objArr, Throwable th) {
        if (!this.enabled) {
            return 0;
        }
        if (this.minLevel.getPriority$com_google_firebase_firebase_common() <= level.getPriority$com_google_firebase_firebase_common() || Log.isLoggable(this.tag, level.getPriority$com_google_firebase_firebase_common())) {
            return log(level, str, objArr, th);
        }
        return 0;
    }

    public static /* synthetic */ int logIfAble$default(Logger logger, Level level, String str, Object[] objArr, Throwable th, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: logIfAble");
        }
        if ((i2 & 4) != 0) {
            objArr = new Object[0];
        }
        return logger.logIfAble(level, str, objArr, th);
    }

    public static final FakeLogger setupFakeLogger(String str, boolean z6, Level level) {
        return Companion.setupFakeLogger(str, z6, level);
    }

    public static /* synthetic */ int verbose$default(Logger logger, String str, Object[] objArr, Throwable th, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: verbose");
        }
        if ((i2 & 4) != 0) {
            th = null;
        }
        return logger.verbose(str, objArr, th);
    }

    public static /* synthetic */ int warn$default(Logger logger, String str, Object[] objArr, Throwable th, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: warn");
        }
        if ((i2 & 4) != 0) {
            th = null;
        }
        return logger.warn(str, objArr, th);
    }

    public final int debug(String msg) {
        j.checkNotNullParameter(msg, "msg");
        return debug$default(this, msg, null, 2, null);
    }

    public final int error(String msg) {
        j.checkNotNullParameter(msg, "msg");
        return error$default(this, msg, null, 2, null);
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final Level getMinLevel() {
        return this.minLevel;
    }

    public final String getTag() {
        return this.tag;
    }

    public final int info(String msg) {
        j.checkNotNullParameter(msg, "msg");
        return info$default(this, msg, null, 2, null);
    }

    public abstract int log(Level level, String str, Object[] objArr, Throwable th);

    public final void setEnabled(boolean z6) {
        this.enabled = z6;
    }

    public final void setMinLevel(Level level) {
        j.checkNotNullParameter(level, "<set-?>");
        this.minLevel = level;
    }

    public final int verbose(String msg) {
        j.checkNotNullParameter(msg, "msg");
        return verbose$default(this, msg, null, 2, null);
    }

    public final int warn(String msg) {
        j.checkNotNullParameter(msg, "msg");
        return warn$default(this, msg, null, 2, null);
    }

    private Logger(String str, boolean z6, Level level) {
        this.tag = str;
        this.enabled = z6;
        this.minLevel = level;
    }

    public static /* synthetic */ int debug$default(Logger logger, String str, Throwable th, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: debug");
        }
        if ((i2 & 2) != 0) {
            th = null;
        }
        return logger.debug(str, th);
    }

    public static /* synthetic */ int error$default(Logger logger, String str, Throwable th, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: error");
        }
        if ((i2 & 2) != 0) {
            th = null;
        }
        return logger.error(str, th);
    }

    public static /* synthetic */ int info$default(Logger logger, String str, Throwable th, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: info");
        }
        if ((i2 & 2) != 0) {
            th = null;
        }
        return logger.info(str, th);
    }

    public static /* synthetic */ int verbose$default(Logger logger, String str, Throwable th, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: verbose");
        }
        if ((i2 & 2) != 0) {
            th = null;
        }
        return logger.verbose(str, th);
    }

    public static /* synthetic */ int warn$default(Logger logger, String str, Throwable th, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: warn");
        }
        if ((i2 & 2) != 0) {
            th = null;
        }
        return logger.warn(str, th);
    }

    public final int debug(String format, Object... args) {
        j.checkNotNullParameter(format, "format");
        j.checkNotNullParameter(args, "args");
        return debug$default(this, format, args, null, 4, null);
    }

    public final int error(String format, Object... args) {
        j.checkNotNullParameter(format, "format");
        j.checkNotNullParameter(args, "args");
        return error$default(this, format, args, null, 4, null);
    }

    public final int info(String format, Object... args) {
        j.checkNotNullParameter(format, "format");
        j.checkNotNullParameter(args, "args");
        return info$default(this, format, args, null, 4, null);
    }

    public final int verbose(String format, Object... args) {
        j.checkNotNullParameter(format, "format");
        j.checkNotNullParameter(args, "args");
        return verbose$default(this, format, args, null, 4, null);
    }

    public final int warn(String format, Object... args) {
        j.checkNotNullParameter(format, "format");
        j.checkNotNullParameter(args, "args");
        return warn$default(this, format, args, null, 4, null);
    }

    public final int debug(String format, Object[] args, Throwable th) {
        j.checkNotNullParameter(format, "format");
        j.checkNotNullParameter(args, "args");
        return logIfAble(Level.DEBUG, format, args, th);
    }

    public final int error(String format, Object[] args, Throwable th) {
        j.checkNotNullParameter(format, "format");
        j.checkNotNullParameter(args, "args");
        return logIfAble(Level.ERROR, format, args, th);
    }

    public final int info(String format, Object[] args, Throwable th) {
        j.checkNotNullParameter(format, "format");
        j.checkNotNullParameter(args, "args");
        return logIfAble(Level.INFO, format, args, th);
    }

    public final int verbose(String format, Object[] args, Throwable th) {
        j.checkNotNullParameter(format, "format");
        j.checkNotNullParameter(args, "args");
        return logIfAble(Level.VERBOSE, format, args, th);
    }

    public final int warn(String format, Object[] args, Throwable th) {
        j.checkNotNullParameter(format, "format");
        j.checkNotNullParameter(args, "args");
        return logIfAble(Level.WARN, format, args, th);
    }

    public final int debug(String msg, Throwable th) {
        j.checkNotNullParameter(msg, "msg");
        return logIfAble$default(this, Level.DEBUG, msg, null, th, 4, null);
    }

    public final int error(String msg, Throwable th) {
        j.checkNotNullParameter(msg, "msg");
        return logIfAble$default(this, Level.ERROR, msg, null, th, 4, null);
    }

    public final int info(String msg, Throwable th) {
        j.checkNotNullParameter(msg, "msg");
        return logIfAble$default(this, Level.INFO, msg, null, th, 4, null);
    }

    public final int verbose(String msg, Throwable th) {
        j.checkNotNullParameter(msg, "msg");
        return logIfAble$default(this, Level.VERBOSE, msg, null, th, 4, null);
    }

    public final int warn(String msg, Throwable th) {
        j.checkNotNullParameter(msg, "msg");
        return logIfAble$default(this, Level.WARN, msg, null, th, 4, null);
    }
}
