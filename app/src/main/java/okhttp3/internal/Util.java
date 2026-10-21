package okhttp3.internal;

import A.i;
import H5.l;
import M5.e;
import M5.g;
import P5.c;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.util.Log;
import cz.msebera.android.httpclient.cookie.SM;
import d6.a;
import e6.A;
import e6.C0870l;
import e6.C0873o;
import e6.InterfaceC0871m;
import e6.InterfaceC0872n;
import e6.J;
import e6.L;
import e6.z;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Field;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.b;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.o;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Header;
import okhttp3.internal.io.FileSystem;
import okio.ByteString;
import org.apache.commons.lang3.time.TimeZones;
import u5.AbstractC1702a;
import v5.n;
import v5.p;
import v5.q;
import v5.u;
import v5.w;

/* loaded from: classes2.dex */
public final class Util {
    public static final byte[] EMPTY_BYTE_ARRAY;
    public static final Headers EMPTY_HEADERS = Headers.Companion.of(new String[0]);
    public static final RequestBody EMPTY_REQUEST;
    public static final ResponseBody EMPTY_RESPONSE;
    private static final A UNICODE_BOMS;
    public static final TimeZone UTC;
    private static final Regex VERIFY_AS_IP_ADDRESS;
    public static final boolean assertionsEnabled;
    public static final String okHttpName;
    public static final String userAgent = "okhttp/4.12.0";

    static {
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        EMPTY_RESPONSE = ResponseBody.Companion.create$default(ResponseBody.Companion, bArr, (MediaType) null, 1, (Object) null);
        EMPTY_REQUEST = RequestBody.Companion.create$default(RequestBody.Companion, bArr, (MediaType) null, 0, 0, 7, (Object) null);
        z zVar = A.f13973j;
        C0873o c0873o = ByteString.f19159j;
        UNICODE_BOMS = zVar.of(c0873o.decodeHex("efbbbf"), c0873o.decodeHex("feff"), c0873o.decodeHex("fffe"), c0873o.decodeHex("0000ffff"), c0873o.decodeHex("ffff0000"));
        TimeZone timeZone = TimeZone.getTimeZone(TimeZones.GMT_ID);
        j.checkNotNull(timeZone);
        UTC = timeZone;
        VERIFY_AS_IP_ADDRESS = new Regex("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
        assertionsEnabled = false;
        String name = OkHttpClient.class.getName();
        j.checkNotNullExpressionValue(name, "OkHttpClient::class.java.name");
        okHttpName = StringsKt__StringsKt.removeSuffix(StringsKt__StringsKt.removePrefix(name, "okhttp3."), "Client");
    }

    public static final <E> void addIfAbsent(List<E> list, E e3) {
        j.checkNotNullParameter(list, "<this>");
        if (list.contains(e3)) {
            return;
        }
        list.add(e3);
    }

    public static final int and(byte b7, int i2) {
        return b7 & i2;
    }

    public static final EventListener.Factory asFactory(EventListener eventListener) {
        j.checkNotNullParameter(eventListener, "<this>");
        return new a(eventListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EventListener asFactory$lambda$8(EventListener this_asFactory, Call it) {
        j.checkNotNullParameter(this_asFactory, "$this_asFactory");
        j.checkNotNullParameter(it, "it");
        return this_asFactory;
    }

    public static final void assertThreadDoesntHoldLock(Object obj) {
        j.checkNotNullParameter(obj, "<this>");
        if (assertionsEnabled && Thread.holdsLock(obj)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + obj);
        }
    }

    public static final void assertThreadHoldsLock(Object obj) {
        j.checkNotNullParameter(obj, "<this>");
        if (!assertionsEnabled || Thread.holdsLock(obj)) {
            return;
        }
        throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + obj);
    }

    public static final boolean canParseAsIpAddress(String str) {
        j.checkNotNullParameter(str, "<this>");
        return VERIFY_AS_IP_ADDRESS.matches(str);
    }

    public static final boolean canReuseConnectionFor(HttpUrl httpUrl, HttpUrl other) {
        j.checkNotNullParameter(httpUrl, "<this>");
        j.checkNotNullParameter(other, "other");
        return j.areEqual(httpUrl.host(), other.host()) && httpUrl.port() == other.port() && j.areEqual(httpUrl.scheme(), other.scheme());
    }

    public static final int checkDuration(String name, long j7, TimeUnit timeUnit) {
        j.checkNotNullParameter(name, "name");
        if (j7 < 0) {
            throw new IllegalStateException(i.B(name, " < 0").toString());
        }
        if (timeUnit == null) {
            throw new IllegalStateException("unit == null");
        }
        long millis = timeUnit.toMillis(j7);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException(i.B(name, " too large.").toString());
        }
        if (millis != 0 || j7 <= 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException(i.B(name, " too small.").toString());
    }

    public static final void checkOffsetAndCount(long j7, long j8, long j9) {
        if ((j8 | j9) < 0 || j8 > j7 || j7 - j8 < j9) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static final void closeQuietly(Closeable closeable) {
        j.checkNotNullParameter(closeable, "<this>");
        try {
            closeable.close();
        } catch (RuntimeException e3) {
            throw e3;
        } catch (Exception unused) {
        }
    }

    public static final String[] concat(String[] strArr, String value) {
        j.checkNotNullParameter(strArr, "<this>");
        j.checkNotNullParameter(value, "value");
        Object[] copyOf = Arrays.copyOf(strArr, strArr.length + 1);
        j.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
        String[] strArr2 = (String[]) copyOf;
        strArr2[n.getLastIndex(strArr2)] = value;
        return strArr2;
    }

    public static final int delimiterOffset(String str, String delimiters, int i2, int i7) {
        j.checkNotNullParameter(str, "<this>");
        j.checkNotNullParameter(delimiters, "delimiters");
        while (i2 < i7) {
            if (StringsKt__StringsKt.contains$default((CharSequence) delimiters, str.charAt(i2), false, 2, (Object) null)) {
                return i2;
            }
            i2++;
        }
        return i7;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, String str2, int i2, int i7, int i8, Object obj) {
        if ((i8 & 2) != 0) {
            i2 = 0;
        }
        if ((i8 & 4) != 0) {
            i7 = str.length();
        }
        return delimiterOffset(str, str2, i2, i7);
    }

    public static final boolean discard(L l7, int i2, TimeUnit timeUnit) {
        j.checkNotNullParameter(l7, "<this>");
        j.checkNotNullParameter(timeUnit, "timeUnit");
        try {
            return skipAll(l7, i2, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static final <T> List<T> filterList(Iterable<? extends T> iterable, l predicate) {
        j.checkNotNullParameter(iterable, "<this>");
        j.checkNotNullParameter(predicate, "predicate");
        List<T> emptyList = p.emptyList();
        for (T t6 : iterable) {
            if (((Boolean) predicate.invoke(t6)).booleanValue()) {
                if (emptyList.isEmpty()) {
                    emptyList = new ArrayList<>();
                }
                j.checkNotNull(emptyList, "null cannot be cast to non-null type kotlin.collections.MutableList<T of okhttp3.internal.Util.filterList>");
                o.asMutableList(emptyList).add(t6);
            }
        }
        return emptyList;
    }

    public static final String format(String format, Object... args) {
        j.checkNotNullParameter(format, "format");
        j.checkNotNullParameter(args, "args");
        Locale locale = Locale.US;
        Object[] copyOf = Arrays.copyOf(args, args.length);
        String format2 = String.format(locale, format, Arrays.copyOf(copyOf, copyOf.length));
        j.checkNotNullExpressionValue(format2, "format(locale, format, *args)");
        return format2;
    }

    public static final boolean hasIntersection(String[] strArr, String[] strArr2, Comparator<? super String> comparator) {
        j.checkNotNullParameter(strArr, "<this>");
        j.checkNotNullParameter(comparator, "comparator");
        if (strArr.length != 0 && strArr2 != null && strArr2.length != 0) {
            for (String str : strArr) {
                Iterator it = b.iterator(strArr2);
                while (it.hasNext()) {
                    if (comparator.compare(str, (String) it.next()) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final long headersContentLength(Response response) {
        j.checkNotNullParameter(response, "<this>");
        String str = response.headers().get("Content-Length");
        if (str != null) {
            return toLongOrDefault(str, -1L);
        }
        return -1L;
    }

    public static final void ignoreIoExceptions(H5.a block) {
        j.checkNotNullParameter(block, "block");
        try {
            block.invoke();
        } catch (IOException unused) {
        }
    }

    @SafeVarargs
    public static final <T> List<T> immutableListOf(T... elements) {
        j.checkNotNullParameter(elements, "elements");
        Object[] objArr = (Object[]) elements.clone();
        List<T> unmodifiableList = Collections.unmodifiableList(p.listOf(Arrays.copyOf(objArr, objArr.length)));
        j.checkNotNullExpressionValue(unmodifiableList, "unmodifiableList(listOf(*elements.clone()))");
        return unmodifiableList;
    }

    public static final int indexOf(String[] strArr, String value, Comparator<String> comparator) {
        j.checkNotNullParameter(strArr, "<this>");
        j.checkNotNullParameter(value, "value");
        j.checkNotNullParameter(comparator, "comparator");
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (comparator.compare(strArr[i2], value) == 0) {
                return i2;
            }
        }
        return -1;
    }

    public static final int indexOfControlOrNonAscii(String str) {
        j.checkNotNullParameter(str, "<this>");
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (j.compare((int) charAt, 31) <= 0 || j.compare((int) charAt, 127) >= 0) {
                return i2;
            }
        }
        return -1;
    }

    public static final int indexOfFirstNonAsciiWhitespace(String str, int i2, int i7) {
        j.checkNotNullParameter(str, "<this>");
        while (i2 < i7) {
            char charAt = str.charAt(i2);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i2;
            }
            i2++;
        }
        return i7;
    }

    public static /* synthetic */ int indexOfFirstNonAsciiWhitespace$default(String str, int i2, int i7, int i8, Object obj) {
        if ((i8 & 1) != 0) {
            i2 = 0;
        }
        if ((i8 & 2) != 0) {
            i7 = str.length();
        }
        return indexOfFirstNonAsciiWhitespace(str, i2, i7);
    }

    public static final int indexOfLastNonAsciiWhitespace(String str, int i2, int i7) {
        j.checkNotNullParameter(str, "<this>");
        int i8 = i7 - 1;
        if (i2 <= i8) {
            while (true) {
                char charAt = str.charAt(i8);
                if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                    return i8 + 1;
                }
                if (i8 == i2) {
                    break;
                }
                i8--;
            }
        }
        return i2;
    }

    public static /* synthetic */ int indexOfLastNonAsciiWhitespace$default(String str, int i2, int i7, int i8, Object obj) {
        if ((i8 & 1) != 0) {
            i2 = 0;
        }
        if ((i8 & 2) != 0) {
            i7 = str.length();
        }
        return indexOfLastNonAsciiWhitespace(str, i2, i7);
    }

    public static final int indexOfNonWhitespace(String str, int i2) {
        j.checkNotNullParameter(str, "<this>");
        int length = str.length();
        while (i2 < length) {
            char charAt = str.charAt(i2);
            if (charAt != ' ' && charAt != '\t') {
                return i2;
            }
            i2++;
        }
        return str.length();
    }

    public static /* synthetic */ int indexOfNonWhitespace$default(String str, int i2, int i7, Object obj) {
        if ((i7 & 1) != 0) {
            i2 = 0;
        }
        return indexOfNonWhitespace(str, i2);
    }

    public static final String[] intersect(String[] strArr, String[] other, Comparator<? super String> comparator) {
        j.checkNotNullParameter(strArr, "<this>");
        j.checkNotNullParameter(other, "other");
        j.checkNotNullParameter(comparator, "comparator");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = other.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (comparator.compare(str, other[i2]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i2++;
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static final boolean isCivilized(FileSystem fileSystem, File file) {
        j.checkNotNullParameter(fileSystem, "<this>");
        j.checkNotNullParameter(file, "file");
        J sink = fileSystem.sink(file);
        try {
            fileSystem.delete(file);
            F5.a.closeFinally(sink, null);
            return true;
        } catch (IOException unused) {
            F5.a.closeFinally(sink, null);
            fileSystem.delete(file);
            return false;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                F5.a.closeFinally(sink, th);
                throw th2;
            }
        }
    }

    public static final boolean isHealthy(Socket socket, InterfaceC0872n source) {
        j.checkNotNullParameter(socket, "<this>");
        j.checkNotNullParameter(source, "source");
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                return !source.exhausted();
            } finally {
                socket.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public static final boolean isSensitiveHeader(String name) {
        j.checkNotNullParameter(name, "name");
        return P5.p.equals(name, "Authorization", true) || P5.p.equals(name, SM.COOKIE, true) || P5.p.equals(name, "Proxy-Authorization", true) || P5.p.equals(name, SM.SET_COOKIE, true);
    }

    public static final void notify(Object obj) {
        j.checkNotNullParameter(obj, "<this>");
        obj.notify();
    }

    public static final void notifyAll(Object obj) {
        j.checkNotNullParameter(obj, "<this>");
        obj.notifyAll();
    }

    public static final int parseHexDigit(char c7) {
        if ('0' <= c7 && c7 < ':') {
            return c7 - '0';
        }
        if ('a' <= c7 && c7 < 'g') {
            return c7 - 'W';
        }
        if ('A' > c7 || c7 >= 'G') {
            return -1;
        }
        return c7 - '7';
    }

    public static final String peerName(Socket socket) {
        j.checkNotNullParameter(socket, "<this>");
        SocketAddress remoteSocketAddress = socket.getRemoteSocketAddress();
        if (!(remoteSocketAddress instanceof InetSocketAddress)) {
            return remoteSocketAddress.toString();
        }
        String hostName = ((InetSocketAddress) remoteSocketAddress).getHostName();
        j.checkNotNullExpressionValue(hostName, "address.hostName");
        return hostName;
    }

    public static final Charset readBomAsCharset(InterfaceC0872n interfaceC0872n, Charset charset) throws IOException {
        j.checkNotNullParameter(interfaceC0872n, "<this>");
        j.checkNotNullParameter(charset, "default");
        int select = interfaceC0872n.select(UNICODE_BOMS);
        if (select == -1) {
            return charset;
        }
        if (select == 0) {
            Charset UTF_8 = StandardCharsets.UTF_8;
            j.checkNotNullExpressionValue(UTF_8, "UTF_8");
            return UTF_8;
        }
        if (select == 1) {
            Charset UTF_16BE = StandardCharsets.UTF_16BE;
            j.checkNotNullExpressionValue(UTF_16BE, "UTF_16BE");
            return UTF_16BE;
        }
        if (select == 2) {
            Charset UTF_16LE = StandardCharsets.UTF_16LE;
            j.checkNotNullExpressionValue(UTF_16LE, "UTF_16LE");
            return UTF_16LE;
        }
        if (select == 3) {
            return c.f2724a.UTF32_BE();
        }
        if (select == 4) {
            return c.f2724a.UTF32_LE();
        }
        throw new AssertionError();
    }

    public static final <T> T readFieldOrNull(Object instance, Class<T> fieldType, String fieldName) {
        T t6;
        Object readFieldOrNull;
        j.checkNotNullParameter(instance, "instance");
        j.checkNotNullParameter(fieldType, "fieldType");
        j.checkNotNullParameter(fieldName, "fieldName");
        Class<?> cls = instance.getClass();
        while (true) {
            t6 = null;
            if (j.areEqual(cls, Object.class)) {
                if (j.areEqual(fieldName, "delegate") || (readFieldOrNull = readFieldOrNull(instance, Object.class, "delegate")) == null) {
                    return null;
                }
                return (T) readFieldOrNull(readFieldOrNull, fieldType, fieldName);
            }
            try {
                Field declaredField = cls.getDeclaredField(fieldName);
                declaredField.setAccessible(true);
                Object obj = declaredField.get(instance);
                if (!fieldType.isInstance(obj)) {
                    break;
                }
                t6 = fieldType.cast(obj);
                break;
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
                j.checkNotNullExpressionValue(cls, "c.superclass");
            }
        }
        return t6;
    }

    public static final int readMedium(InterfaceC0872n interfaceC0872n) throws IOException {
        j.checkNotNullParameter(interfaceC0872n, "<this>");
        return and(interfaceC0872n.readByte(), 255) | (and(interfaceC0872n.readByte(), 255) << 16) | (and(interfaceC0872n.readByte(), 255) << 8);
    }

    public static final boolean skipAll(L l7, int i2, TimeUnit timeUnit) throws IOException {
        j.checkNotNullParameter(l7, "<this>");
        j.checkNotNullParameter(timeUnit, "timeUnit");
        long nanoTime = System.nanoTime();
        long deadlineNanoTime = l7.timeout().hasDeadline() ? l7.timeout().deadlineNanoTime() - nanoTime : Long.MAX_VALUE;
        l7.timeout().deadlineNanoTime(Math.min(deadlineNanoTime, timeUnit.toNanos(i2)) + nanoTime);
        try {
            C0870l c0870l = new C0870l();
            while (l7.read(c0870l, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                c0870l.clear();
            }
            if (deadlineNanoTime == Long.MAX_VALUE) {
                l7.timeout().clearDeadline();
                return true;
            }
            l7.timeout().deadlineNanoTime(nanoTime + deadlineNanoTime);
            return true;
        } catch (InterruptedIOException unused) {
            if (deadlineNanoTime == Long.MAX_VALUE) {
                l7.timeout().clearDeadline();
                return false;
            }
            l7.timeout().deadlineNanoTime(nanoTime + deadlineNanoTime);
            return false;
        } catch (Throwable th) {
            if (deadlineNanoTime == Long.MAX_VALUE) {
                l7.timeout().clearDeadline();
            } else {
                l7.timeout().deadlineNanoTime(nanoTime + deadlineNanoTime);
            }
            throw th;
        }
    }

    public static final ThreadFactory threadFactory(final String name, final boolean z6) {
        j.checkNotNullParameter(name, "name");
        return new ThreadFactory() { // from class: d6.b
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread threadFactory$lambda$1;
                threadFactory$lambda$1 = Util.threadFactory$lambda$1(name, z6, runnable);
                return threadFactory$lambda$1;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Thread threadFactory$lambda$1(String name, boolean z6, Runnable runnable) {
        j.checkNotNullParameter(name, "$name");
        Thread thread = new Thread(runnable, name);
        thread.setDaemon(z6);
        return thread;
    }

    public static final void threadName(String name, H5.a block) {
        j.checkNotNullParameter(name, "name");
        j.checkNotNullParameter(block, "block");
        Thread currentThread = Thread.currentThread();
        String name2 = currentThread.getName();
        currentThread.setName(name);
        try {
            block.invoke();
        } finally {
            kotlin.jvm.internal.i.finallyStart(1);
            currentThread.setName(name2);
            kotlin.jvm.internal.i.finallyEnd(1);
        }
    }

    public static final List<Header> toHeaderList(Headers headers) {
        j.checkNotNullParameter(headers, "<this>");
        e until = g.until(0, headers.size());
        ArrayList arrayList = new ArrayList(q.collectionSizeOrDefault(until, 10));
        Iterator it = until.iterator();
        while (it.hasNext()) {
            int nextInt = ((w) it).nextInt();
            arrayList.add(new Header(headers.name(nextInt), headers.value(nextInt)));
        }
        return arrayList;
    }

    public static final Headers toHeaders(List<Header> list) {
        j.checkNotNullParameter(list, "<this>");
        Headers.Builder builder = new Headers.Builder();
        for (Header header : list) {
            builder.addLenient$okhttp(header.component1().utf8(), header.component2().utf8());
        }
        return builder.build();
    }

    public static final String toHexString(long j7) {
        String hexString = Long.toHexString(j7);
        j.checkNotNullExpressionValue(hexString, "toHexString(this)");
        return hexString;
    }

    public static final String toHostHeader(HttpUrl httpUrl, boolean z6) {
        String host;
        j.checkNotNullParameter(httpUrl, "<this>");
        if (StringsKt__StringsKt.contains$default((CharSequence) httpUrl.host(), (CharSequence) ":", false, 2, (Object) null)) {
            host = "[" + httpUrl.host() + ']';
        } else {
            host = httpUrl.host();
        }
        if (!z6 && httpUrl.port() == HttpUrl.Companion.defaultPort(httpUrl.scheme())) {
            return host;
        }
        return host + ':' + httpUrl.port();
    }

    public static /* synthetic */ String toHostHeader$default(HttpUrl httpUrl, boolean z6, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z6 = false;
        }
        return toHostHeader(httpUrl, z6);
    }

    public static final <T> List<T> toImmutableList(List<? extends T> list) {
        j.checkNotNullParameter(list, "<this>");
        List<T> unmodifiableList = Collections.unmodifiableList(u.toMutableList((Collection) list));
        j.checkNotNullExpressionValue(unmodifiableList, "unmodifiableList(toMutableList())");
        return unmodifiableList;
    }

    public static final <K, V> Map<K, V> toImmutableMap(Map<K, ? extends V> map) {
        j.checkNotNullParameter(map, "<this>");
        if (map.isEmpty()) {
            return kotlin.collections.a.emptyMap();
        }
        Map<K, V> unmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(map));
        j.checkNotNullExpressionValue(unmodifiableMap, "{\n    Collections.unmodi…(LinkedHashMap(this))\n  }");
        return unmodifiableMap;
    }

    public static final long toLongOrDefault(String str, long j7) {
        j.checkNotNullParameter(str, "<this>");
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j7;
        }
    }

    public static final int toNonNegativeInt(String str, int i2) {
        if (str != null) {
            try {
                long parseLong = Long.parseLong(str);
                if (parseLong > 2147483647L) {
                    return Log.LOG_LEVEL_OFF;
                }
                if (parseLong < 0) {
                    return 0;
                }
                return (int) parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        return i2;
    }

    public static final String trimSubstring(String str, int i2, int i7) {
        j.checkNotNullParameter(str, "<this>");
        int indexOfFirstNonAsciiWhitespace = indexOfFirstNonAsciiWhitespace(str, i2, i7);
        String substring = str.substring(indexOfFirstNonAsciiWhitespace, indexOfLastNonAsciiWhitespace(str, indexOfFirstNonAsciiWhitespace, i7));
        j.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String trimSubstring$default(String str, int i2, int i7, int i8, Object obj) {
        if ((i8 & 1) != 0) {
            i2 = 0;
        }
        if ((i8 & 2) != 0) {
            i7 = str.length();
        }
        return trimSubstring(str, i2, i7);
    }

    public static final void wait(Object obj) {
        j.checkNotNullParameter(obj, "<this>");
        obj.wait();
    }

    public static final Throwable withSuppressed(Exception exc, List<? extends Exception> suppressed) {
        j.checkNotNullParameter(exc, "<this>");
        j.checkNotNullParameter(suppressed, "suppressed");
        Iterator<? extends Exception> it = suppressed.iterator();
        while (it.hasNext()) {
            AbstractC1702a.addSuppressed(exc, it.next());
        }
        return exc;
    }

    public static final void writeMedium(InterfaceC0871m interfaceC0871m, int i2) throws IOException {
        j.checkNotNullParameter(interfaceC0871m, "<this>");
        interfaceC0871m.writeByte((i2 >>> 16) & 255);
        interfaceC0871m.writeByte((i2 >>> 8) & 255);
        interfaceC0871m.writeByte(i2 & 255);
    }

    public static final int and(short s6, int i2) {
        return s6 & i2;
    }

    public static final int delimiterOffset(String str, char c7, int i2, int i7) {
        j.checkNotNullParameter(str, "<this>");
        while (i2 < i7) {
            if (str.charAt(i2) == c7) {
                return i2;
            }
            i2++;
        }
        return i7;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, char c7, int i2, int i7, int i8, Object obj) {
        if ((i8 & 2) != 0) {
            i2 = 0;
        }
        if ((i8 & 4) != 0) {
            i7 = str.length();
        }
        return delimiterOffset(str, c7, i2, i7);
    }

    public static final String toHexString(int i2) {
        String hexString = Integer.toHexString(i2);
        j.checkNotNullExpressionValue(hexString, "toHexString(this)");
        return hexString;
    }

    public static final long and(int i2, long j7) {
        return j7 & i2;
    }

    public static final void closeQuietly(Socket socket) {
        j.checkNotNullParameter(socket, "<this>");
        try {
            socket.close();
        } catch (AssertionError e3) {
            throw e3;
        } catch (RuntimeException e7) {
            if (!j.areEqual(e7.getMessage(), "bio == null")) {
                throw e7;
            }
        } catch (Exception unused) {
        }
    }

    public static final void closeQuietly(ServerSocket serverSocket) {
        j.checkNotNullParameter(serverSocket, "<this>");
        try {
            serverSocket.close();
        } catch (RuntimeException e3) {
            throw e3;
        } catch (Exception unused) {
        }
    }

    public static final int skipAll(C0870l c0870l, byte b7) {
        j.checkNotNullParameter(c0870l, "<this>");
        int i2 = 0;
        while (!c0870l.exhausted() && c0870l.getByte(0L) == b7) {
            i2++;
            c0870l.readByte();
        }
        return i2;
    }
}
