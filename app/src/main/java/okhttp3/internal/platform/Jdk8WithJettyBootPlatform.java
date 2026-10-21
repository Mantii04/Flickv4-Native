package okhttp3.internal.platform;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import okhttp3.Protocol;

/* loaded from: classes2.dex */
public final class Jdk8WithJettyBootPlatform extends Platform {
    public static final Companion Companion = new Companion(null);
    private final Class<?> clientProviderClass;
    private final Method getMethod;
    private final Method putMethod;
    private final Method removeMethod;
    private final Class<?> serverProviderClass;

    public static final class AlpnProvider implements InvocationHandler {
        private final List<String> protocols;
        private String selected;
        private boolean unsupported;

        public AlpnProvider(List<String> protocols) {
            j.checkNotNullParameter(protocols, "protocols");
            this.protocols = protocols;
        }

        public final String getSelected() {
            return this.selected;
        }

        public final boolean getUnsupported() {
            return this.unsupported;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object proxy, Method method, Object[] objArr) throws Throwable {
            j.checkNotNullParameter(proxy, "proxy");
            j.checkNotNullParameter(method, "method");
            if (objArr == null) {
                objArr = new Object[0];
            }
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (j.areEqual(name, "supports") && j.areEqual(Boolean.TYPE, returnType)) {
                return Boolean.TRUE;
            }
            if (j.areEqual(name, "unsupported") && j.areEqual(Void.TYPE, returnType)) {
                this.unsupported = true;
                return null;
            }
            if (j.areEqual(name, "protocols") && objArr.length == 0) {
                return this.protocols;
            }
            if ((j.areEqual(name, "selectProtocol") || j.areEqual(name, "select")) && j.areEqual(String.class, returnType) && objArr.length == 1) {
                Object obj = objArr[0];
                if (obj instanceof List) {
                    j.checkNotNull(obj, "null cannot be cast to non-null type kotlin.collections.List<*>");
                    List list = (List) obj;
                    int size = list.size();
                    if (size >= 0) {
                        int i2 = 0;
                        while (true) {
                            Object obj2 = list.get(i2);
                            j.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                            String str = (String) obj2;
                            if (!this.protocols.contains(str)) {
                                if (i2 == size) {
                                    break;
                                }
                                i2++;
                            } else {
                                this.selected = str;
                                return str;
                            }
                        }
                    }
                    String str2 = this.protocols.get(0);
                    this.selected = str2;
                    return str2;
                }
            }
            if ((!j.areEqual(name, "protocolSelected") && !j.areEqual(name, "selected")) || objArr.length != 1) {
                return method.invoke(this, Arrays.copyOf(objArr, objArr.length));
            }
            Object obj3 = objArr[0];
            j.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
            this.selected = (String) obj3;
            return null;
        }

        public final void setSelected(String str) {
            this.selected = str;
        }

        public final void setUnsupported(boolean z6) {
            this.unsupported = z6;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
        
            if (java.lang.Integer.parseInt(r3) >= 9) goto L10;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okhttp3.internal.platform.Platform buildIfSupported() {
            /*
                r13 = this;
                r0 = 0
                r1 = 1
                java.lang.Class<javax.net.ssl.SSLSocket> r2 = javax.net.ssl.SSLSocket.class
                java.lang.String r3 = "java.specification.version"
                java.lang.String r4 = "unknown"
                java.lang.String r3 = java.lang.System.getProperty(r3, r4)
                r4 = 0
                java.lang.String r5 = "jvmVersion"
                kotlin.jvm.internal.j.checkNotNullExpressionValue(r3, r5)     // Catch: java.lang.NumberFormatException -> L1b
                int r3 = java.lang.Integer.parseInt(r3)     // Catch: java.lang.NumberFormatException -> L1b
                r5 = 9
                if (r3 < r5) goto L1b
                goto L73
            L1b:
                java.lang.String r3 = "org.eclipse.jetty.alpn.ALPN"
                java.lang.Class r3 = java.lang.Class.forName(r3, r1, r4)     // Catch: java.lang.Throwable -> L73
                java.lang.String r5 = "org.eclipse.jetty.alpn.ALPN$Provider"
                java.lang.Class r5 = java.lang.Class.forName(r5, r1, r4)     // Catch: java.lang.Throwable -> L73
                java.lang.String r6 = "org.eclipse.jetty.alpn.ALPN$ClientProvider"
                java.lang.Class r11 = java.lang.Class.forName(r6, r1, r4)     // Catch: java.lang.Throwable -> L73
                java.lang.String r6 = "org.eclipse.jetty.alpn.ALPN$ServerProvider"
                java.lang.Class r12 = java.lang.Class.forName(r6, r1, r4)     // Catch: java.lang.Throwable -> L73
                java.lang.String r6 = "put"
                r7 = 2
                java.lang.Class[] r7 = new java.lang.Class[r7]     // Catch: java.lang.Throwable -> L73
                r7[r0] = r2     // Catch: java.lang.Throwable -> L73
                r7[r1] = r5     // Catch: java.lang.Throwable -> L73
                java.lang.reflect.Method r8 = r3.getMethod(r6, r7)     // Catch: java.lang.Throwable -> L73
                java.lang.String r5 = "get"
                java.lang.Class[] r6 = new java.lang.Class[r1]     // Catch: java.lang.Throwable -> L73
                r6[r0] = r2     // Catch: java.lang.Throwable -> L73
                java.lang.reflect.Method r9 = r3.getMethod(r5, r6)     // Catch: java.lang.Throwable -> L73
                java.lang.String r5 = "remove"
                java.lang.Class[] r1 = new java.lang.Class[r1]     // Catch: java.lang.Throwable -> L73
                r1[r0] = r2     // Catch: java.lang.Throwable -> L73
                java.lang.reflect.Method r10 = r3.getMethod(r5, r1)     // Catch: java.lang.Throwable -> L73
                okhttp3.internal.platform.Jdk8WithJettyBootPlatform r7 = new okhttp3.internal.platform.Jdk8WithJettyBootPlatform     // Catch: java.lang.Throwable -> L73
                java.lang.String r0 = "putMethod"
                kotlin.jvm.internal.j.checkNotNullExpressionValue(r8, r0)     // Catch: java.lang.Throwable -> L73
                java.lang.String r0 = "getMethod"
                kotlin.jvm.internal.j.checkNotNullExpressionValue(r9, r0)     // Catch: java.lang.Throwable -> L73
                java.lang.String r0 = "removeMethod"
                kotlin.jvm.internal.j.checkNotNullExpressionValue(r10, r0)     // Catch: java.lang.Throwable -> L73
                java.lang.String r0 = "clientProviderClass"
                kotlin.jvm.internal.j.checkNotNullExpressionValue(r11, r0)     // Catch: java.lang.Throwable -> L73
                java.lang.String r0 = "serverProviderClass"
                kotlin.jvm.internal.j.checkNotNullExpressionValue(r12, r0)     // Catch: java.lang.Throwable -> L73
                r7.<init>(r8, r9, r10, r11, r12)     // Catch: java.lang.Throwable -> L73
                return r7
            L73:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.platform.Jdk8WithJettyBootPlatform.Companion.buildIfSupported():okhttp3.internal.platform.Platform");
        }

        private Companion() {
        }
    }

    public Jdk8WithJettyBootPlatform(Method putMethod, Method getMethod, Method removeMethod, Class<?> clientProviderClass, Class<?> serverProviderClass) {
        j.checkNotNullParameter(putMethod, "putMethod");
        j.checkNotNullParameter(getMethod, "getMethod");
        j.checkNotNullParameter(removeMethod, "removeMethod");
        j.checkNotNullParameter(clientProviderClass, "clientProviderClass");
        j.checkNotNullParameter(serverProviderClass, "serverProviderClass");
        this.putMethod = putMethod;
        this.getMethod = getMethod;
        this.removeMethod = removeMethod;
        this.clientProviderClass = clientProviderClass;
        this.serverProviderClass = serverProviderClass;
    }

    @Override // okhttp3.internal.platform.Platform
    public void afterHandshake(SSLSocket sslSocket) {
        j.checkNotNullParameter(sslSocket, "sslSocket");
        try {
            this.removeMethod.invoke(null, sslSocket);
        } catch (IllegalAccessException e3) {
            throw new AssertionError("failed to remove ALPN", e3);
        } catch (InvocationTargetException e7) {
            throw new AssertionError("failed to remove ALPN", e7);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public void configureTlsExtensions(SSLSocket sslSocket, String str, List<? extends Protocol> protocols) {
        j.checkNotNullParameter(sslSocket, "sslSocket");
        j.checkNotNullParameter(protocols, "protocols");
        try {
            this.putMethod.invoke(null, sslSocket, Proxy.newProxyInstance(Platform.class.getClassLoader(), new Class[]{this.clientProviderClass, this.serverProviderClass}, new AlpnProvider(Platform.Companion.alpnProtocolNames(protocols))));
        } catch (IllegalAccessException e3) {
            throw new AssertionError("failed to set ALPN", e3);
        } catch (InvocationTargetException e7) {
            throw new AssertionError("failed to set ALPN", e7);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public String getSelectedProtocol(SSLSocket sslSocket) {
        j.checkNotNullParameter(sslSocket, "sslSocket");
        try {
            InvocationHandler invocationHandler = Proxy.getInvocationHandler(this.getMethod.invoke(null, sslSocket));
            j.checkNotNull(invocationHandler, "null cannot be cast to non-null type okhttp3.internal.platform.Jdk8WithJettyBootPlatform.AlpnProvider");
            AlpnProvider alpnProvider = (AlpnProvider) invocationHandler;
            if (!alpnProvider.getUnsupported() && alpnProvider.getSelected() == null) {
                Platform.log$default(this, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", 0, null, 6, null);
                return null;
            }
            if (alpnProvider.getUnsupported()) {
                return null;
            }
            return alpnProvider.getSelected();
        } catch (IllegalAccessException e3) {
            throw new AssertionError("failed to get ALPN selected protocol", e3);
        } catch (InvocationTargetException e7) {
            throw new AssertionError("failed to get ALPN selected protocol", e7);
        }
    }
}
