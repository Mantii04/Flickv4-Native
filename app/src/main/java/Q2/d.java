package Q2;

import A.i;
import J0.g;
import R2.A;
import R2.AbstractC0257b;
import R2.B;
import R2.E;
import R2.v;
import R2.x;
import R2.y;
import R2.z;
import S2.s;
import S2.t;
import S2.u;
import T2.h;
import T2.o;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import c3.InterfaceC0724a;
import com.google.android.datatransport.cct.internal.ClientInfo$ClientType;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType;
import com.google.android.datatransport.cct.internal.QosTier;
import com.google.firebase.encoders.DataEncoder;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class d implements o {

    /* renamed from: b, reason: collision with root package name */
    public final ConnectivityManager f2846b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f2847c;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC0724a f2849e;

    /* renamed from: f, reason: collision with root package name */
    public final InterfaceC0724a f2850f;

    /* renamed from: a, reason: collision with root package name */
    public final DataEncoder f2845a = v.createDataEncoder();

    /* renamed from: d, reason: collision with root package name */
    public final URL f2848d = a(a.f2833c);

    /* renamed from: g, reason: collision with root package name */
    public final int f2851g = 130000;

    public d(Context context, InterfaceC0724a interfaceC0724a, InterfaceC0724a interfaceC0724a2) {
        this.f2847c = context;
        this.f2846b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f2849e = interfaceC0724a2;
        this.f2850f = interfaceC0724a;
    }

    public static URL a(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e3) {
            throw new IllegalArgumentException(i.k("Invalid url: ", str), e3);
        }
    }

    public u decorate(u uVar) {
        int subtype;
        NetworkInfo activeNetworkInfo = this.f2846b.getActiveNetworkInfo();
        t addMetadata = uVar.toBuilder().addMetadata("sdk-version", Build.VERSION.SDK_INT).addMetadata("model", Build.MODEL).addMetadata("hardware", Build.HARDWARE).addMetadata("device", Build.DEVICE).addMetadata("product", Build.PRODUCT).addMetadata("os-uild", Build.ID).addMetadata("manufacturer", Build.MANUFACTURER).addMetadata("fingerprint", Build.FINGERPRINT);
        Calendar.getInstance();
        t addMetadata2 = addMetadata.addMetadata("tz-offset", TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000).addMetadata("net-type", activeNetworkInfo == null ? NetworkConnectionInfo$NetworkType.NONE.getValue() : activeNetworkInfo.getType());
        int i2 = -1;
        if (activeNetworkInfo == null) {
            subtype = NetworkConnectionInfo$MobileSubtype.UNKNOWN_MOBILE_SUBTYPE.getValue();
        } else {
            subtype = activeNetworkInfo.getSubtype();
            if (subtype == -1) {
                subtype = NetworkConnectionInfo$MobileSubtype.COMBINED.getValue();
            } else if (NetworkConnectionInfo$MobileSubtype.forNumber(subtype) == null) {
                subtype = 0;
            }
        }
        t addMetadata3 = addMetadata2.addMetadata("mobile-subtype", subtype).addMetadata("country", Locale.getDefault().getCountry()).addMetadata("locale", Locale.getDefault().getLanguage());
        Context context = this.f2847c;
        t addMetadata4 = addMetadata3.addMetadata("mcc_mnc", ((TelephonyManager) context.getSystemService("phone")).getSimOperator());
        try {
            i2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e3) {
            W2.a.e("CctTransportBackend", "Unable to find version code for package", e3);
        }
        return addMetadata4.addMetadata("application_build", Integer.toString(i2)).build();
    }

    public T2.i send(h hVar) {
        y protoBuilder;
        HashMap hashMap = new HashMap();
        for (u uVar : hVar.getEvents()) {
            String transportName = uVar.getTransportName();
            if (hashMap.containsKey(transportName)) {
                ((List) hashMap.get(transportName)).add(uVar);
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(uVar);
                hashMap.put(transportName, arrayList);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            u uVar2 = (u) ((List) entry.getValue()).get(0);
            A clientInfo = B.builder().setQosTier(QosTier.f9493b).setRequestTimeMs(this.f2850f.getTime()).setRequestUptimeMs(this.f2849e.getTime()).setClientInfo(x.builder().setClientType(ClientInfo$ClientType.f9482b).setAndroidClientInfo(AbstractC0257b.builder().setSdkVersion(Integer.valueOf(uVar2.getInteger("sdk-version"))).setModel(uVar2.get("model")).setHardware(uVar2.get("hardware")).setDevice(uVar2.get("device")).setProduct(uVar2.get("product")).setOsBuild(uVar2.get("os-uild")).setManufacturer(uVar2.get("manufacturer")).setFingerprint(uVar2.get("fingerprint")).setCountry(uVar2.get("country")).setLocale(uVar2.get("locale")).setMccMnc(uVar2.get("mcc_mnc")).setApplicationBuild(uVar2.get("application_build")).build()).build());
            try {
                clientInfo.setSource(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException unused) {
                clientInfo.setSource((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (u uVar3 : (List) entry.getValue()) {
                s encodedPayload = uVar3.getEncodedPayload();
                P2.b encoding = encodedPayload.getEncoding();
                if (encoding.equals(P2.b.of("proto"))) {
                    protoBuilder = z.protoBuilder(encodedPayload.getBytes());
                } else if (encoding.equals(P2.b.of("json"))) {
                    protoBuilder = z.jsonBuilder(new String(encodedPayload.getBytes(), Charset.forName("UTF-8")));
                } else {
                    W2.a.w("CctTransportBackend", "Received event of unsupported encoding %s. Skipping...", encoding);
                }
                protoBuilder.setEventTimeMs(uVar3.getEventMillis()).setEventUptimeMs(uVar3.getUptimeMillis()).setTimezoneOffsetSeconds(uVar3.getLong("tz-offset")).setNetworkConnectionInfo(E.builder().setNetworkType(NetworkConnectionInfo$NetworkType.forNumber(uVar3.getInteger("net-type"))).setMobileSubtype(NetworkConnectionInfo$MobileSubtype.forNumber(uVar3.getInteger("mobile-subtype"))).build());
                if (uVar3.getCode() != null) {
                    protoBuilder.setEventCode(uVar3.getCode());
                }
                arrayList3.add(protoBuilder.build());
            }
            clientInfo.setLogEvents(arrayList3);
            arrayList2.add(clientInfo.build());
        }
        v create = v.create(arrayList2);
        byte[] extras = hVar.getExtras();
        URL url = this.f2848d;
        if (extras != null) {
            try {
                a fromByteArray = a.fromByteArray(hVar.getExtras());
                r2 = fromByteArray.getAPIKey() != null ? fromByteArray.getAPIKey() : null;
                if (fromByteArray.getEndPoint() != null) {
                    url = a(fromByteArray.getEndPoint());
                }
            } catch (IllegalArgumentException unused2) {
                return T2.i.fatalError();
            }
        }
        try {
            c cVar = (c) X2.b.retry(5, new b(url, create, r2), new A0.a(this, 8), new g(5));
            int i2 = cVar.f2842a;
            if (i2 == 200) {
                return T2.i.ok(cVar.f2844c);
            }
            if (i2 < 500 && i2 != 404) {
                return i2 == 400 ? T2.i.invalidPayload() : T2.i.fatalError();
            }
            return T2.i.transientError();
        } catch (IOException e3) {
            W2.a.e("CctTransportBackend", "Could not make request to the backend", e3);
            return T2.i.transientError();
        }
    }
}
