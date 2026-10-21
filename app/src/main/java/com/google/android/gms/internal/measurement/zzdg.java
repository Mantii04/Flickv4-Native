package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import cz.msebera.android.httpclient.util.LangUtils;
import java.util.HashMap;

/* loaded from: classes2.dex */
public abstract class zzdg extends zzbx implements zzdd {
    public zzdg() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public static zzdd asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return queryLocalInterface instanceof zzdd ? (zzdd) queryLocalInterface : new zzdf(iBinder);
    }

    @Override // com.google.android.gms.internal.measurement.zzbx
    public final boolean zza(int i2, Parcel parcel, Parcel parcel2, int i7) throws RemoteException {
        zzdi zzdiVar = null;
        zzdi zzdiVar2 = null;
        zzdi zzdiVar3 = null;
        zzdi zzdiVar4 = null;
        zzdj zzdjVar = null;
        zzdj zzdjVar2 = null;
        zzdj zzdjVar3 = null;
        zzdi zzdiVar5 = null;
        zzdi zzdiVar6 = null;
        zzdi zzdiVar7 = null;
        zzdi zzdiVar8 = null;
        zzdi zzdiVar9 = null;
        zzdi zzdiVar10 = null;
        zzdo zzdoVar = null;
        zzdi zzdiVar11 = null;
        zzdi zzdiVar12 = null;
        zzdi zzdiVar13 = null;
        zzdi zzdiVar14 = null;
        zzdi zzdiVar15 = null;
        switch (i2) {
            case 1:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzdq zzdqVar = (zzdq) zzbw.zza(parcel, zzdq.CREATOR);
                long readLong = parcel.readLong();
                zzbw.zzb(parcel);
                initialize(asInterface, zzdqVar, readLong);
                break;
            case 2:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                boolean zzc = zzbw.zzc(parcel);
                boolean zzc2 = zzbw.zzc(parcel);
                long readLong2 = parcel.readLong();
                zzbw.zzb(parcel);
                logEvent(readString, readString2, bundle, zzc, zzc2, readLong2);
                break;
            case 3:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                Bundle bundle2 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzdiVar = queryLocalInterface instanceof zzdi ? (zzdi) queryLocalInterface : new zzdk(readStrongBinder);
                }
                long readLong3 = parcel.readLong();
                zzbw.zzb(parcel);
                logEventAndBundle(readString3, readString4, bundle2, zzdiVar, readLong3);
                break;
            case 4:
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                boolean zzc3 = zzbw.zzc(parcel);
                long readLong4 = parcel.readLong();
                zzbw.zzb(parcel);
                setUserProperty(readString5, readString6, asInterface2, zzc3, readLong4);
                break;
            case 5:
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                boolean zzc4 = zzbw.zzc(parcel);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzdiVar15 = queryLocalInterface2 instanceof zzdi ? (zzdi) queryLocalInterface2 : new zzdk(readStrongBinder2);
                }
                zzbw.zzb(parcel);
                getUserProperties(readString7, readString8, zzc4, zzdiVar15);
                break;
            case 6:
                String readString9 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzdiVar14 = queryLocalInterface3 instanceof zzdi ? (zzdi) queryLocalInterface3 : new zzdk(readStrongBinder3);
                }
                zzbw.zzb(parcel);
                getMaxUserProperties(readString9, zzdiVar14);
                break;
            case 7:
                String readString10 = parcel.readString();
                long readLong5 = parcel.readLong();
                zzbw.zzb(parcel);
                setUserId(readString10, readLong5);
                break;
            case 8:
                Bundle bundle3 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                long readLong6 = parcel.readLong();
                zzbw.zzb(parcel);
                setConditionalUserProperty(bundle3, readLong6);
                break;
            case 9:
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                Bundle bundle4 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                zzbw.zzb(parcel);
                clearConditionalUserProperty(readString11, readString12, bundle4);
                break;
            case 10:
                String readString13 = parcel.readString();
                String readString14 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzdiVar13 = queryLocalInterface4 instanceof zzdi ? (zzdi) queryLocalInterface4 : new zzdk(readStrongBinder4);
                }
                zzbw.zzb(parcel);
                getConditionalUserProperties(readString13, readString14, zzdiVar13);
                break;
            case 11:
                boolean zzc5 = zzbw.zzc(parcel);
                long readLong7 = parcel.readLong();
                zzbw.zzb(parcel);
                setMeasurementEnabled(zzc5, readLong7);
                break;
            case 12:
                long readLong8 = parcel.readLong();
                zzbw.zzb(parcel);
                resetAnalyticsData(readLong8);
                break;
            case 13:
                long readLong9 = parcel.readLong();
                zzbw.zzb(parcel);
                setMinimumSessionDuration(readLong9);
                break;
            case 14:
                long readLong10 = parcel.readLong();
                zzbw.zzb(parcel);
                setSessionTimeoutDuration(readLong10);
                break;
            case 15:
                IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String readString15 = parcel.readString();
                String readString16 = parcel.readString();
                long readLong11 = parcel.readLong();
                zzbw.zzb(parcel);
                setCurrentScreen(asInterface3, readString15, readString16, readLong11);
                break;
            case 16:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzdiVar12 = queryLocalInterface5 instanceof zzdi ? (zzdi) queryLocalInterface5 : new zzdk(readStrongBinder5);
                }
                zzbw.zzb(parcel);
                getCurrentScreenName(zzdiVar12);
                break;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzdiVar11 = queryLocalInterface6 instanceof zzdi ? (zzdi) queryLocalInterface6 : new zzdk(readStrongBinder6);
                }
                zzbw.zzb(parcel);
                getCurrentScreenClass(zzdiVar11);
                break;
            case 18:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    zzdoVar = queryLocalInterface7 instanceof zzdo ? (zzdo) queryLocalInterface7 : new zzdn(readStrongBinder7);
                }
                zzbw.zzb(parcel);
                setInstanceIdProvider(zzdoVar);
                break;
            case 19:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzdiVar10 = queryLocalInterface8 instanceof zzdi ? (zzdi) queryLocalInterface8 : new zzdk(readStrongBinder8);
                }
                zzbw.zzb(parcel);
                getCachedAppInstanceId(zzdiVar10);
                break;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzdiVar9 = queryLocalInterface9 instanceof zzdi ? (zzdi) queryLocalInterface9 : new zzdk(readStrongBinder9);
                }
                zzbw.zzb(parcel);
                getAppInstanceId(zzdiVar9);
                break;
            case 21:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 != null) {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzdiVar8 = queryLocalInterface10 instanceof zzdi ? (zzdi) queryLocalInterface10 : new zzdk(readStrongBinder10);
                }
                zzbw.zzb(parcel);
                getGmpAppId(zzdiVar8);
                break;
            case 22:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 != null) {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzdiVar7 = queryLocalInterface11 instanceof zzdi ? (zzdi) queryLocalInterface11 : new zzdk(readStrongBinder11);
                }
                zzbw.zzb(parcel);
                generateEventId(zzdiVar7);
                break;
            case 23:
                String readString17 = parcel.readString();
                long readLong12 = parcel.readLong();
                zzbw.zzb(parcel);
                beginAdUnitExposure(readString17, readLong12);
                break;
            case 24:
                String readString18 = parcel.readString();
                long readLong13 = parcel.readLong();
                zzbw.zzb(parcel);
                endAdUnitExposure(readString18, readLong13);
                break;
            case 25:
                IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long readLong14 = parcel.readLong();
                zzbw.zzb(parcel);
                onActivityStarted(asInterface4, readLong14);
                break;
            case 26:
                IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long readLong15 = parcel.readLong();
                zzbw.zzb(parcel);
                onActivityStopped(asInterface5, readLong15);
                break;
            case 27:
                IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                Bundle bundle5 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                long readLong16 = parcel.readLong();
                zzbw.zzb(parcel);
                onActivityCreated(asInterface6, bundle5, readLong16);
                break;
            case 28:
                IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long readLong17 = parcel.readLong();
                zzbw.zzb(parcel);
                onActivityDestroyed(asInterface7, readLong17);
                break;
            case 29:
                IObjectWrapper asInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long readLong18 = parcel.readLong();
                zzbw.zzb(parcel);
                onActivityPaused(asInterface8, readLong18);
                break;
            case 30:
                IObjectWrapper asInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long readLong19 = parcel.readLong();
                zzbw.zzb(parcel);
                onActivityResumed(asInterface9, readLong19);
                break;
            case 31:
                IObjectWrapper asInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 != null) {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzdiVar6 = queryLocalInterface12 instanceof zzdi ? (zzdi) queryLocalInterface12 : new zzdk(readStrongBinder12);
                }
                long readLong20 = parcel.readLong();
                zzbw.zzb(parcel);
                onActivitySaveInstanceState(asInterface10, zzdiVar6, readLong20);
                break;
            case 32:
                Bundle bundle6 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 != null) {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzdiVar5 = queryLocalInterface13 instanceof zzdi ? (zzdi) queryLocalInterface13 : new zzdk(readStrongBinder13);
                }
                long readLong21 = parcel.readLong();
                zzbw.zzb(parcel);
                performAction(bundle6, zzdiVar5, readLong21);
                break;
            case 33:
                int readInt = parcel.readInt();
                String readString19 = parcel.readString();
                IObjectWrapper asInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper asInterface12 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper asInterface13 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbw.zzb(parcel);
                logHealthData(readInt, readString19, asInterface11, asInterface12, asInterface13);
                break;
            case 34:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 != null) {
                    IInterface queryLocalInterface14 = readStrongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    zzdjVar3 = queryLocalInterface14 instanceof zzdj ? (zzdj) queryLocalInterface14 : new zzdl(readStrongBinder14);
                }
                zzbw.zzb(parcel);
                setEventInterceptor(zzdjVar3);
                break;
            case 35:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 != null) {
                    IInterface queryLocalInterface15 = readStrongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    zzdjVar2 = queryLocalInterface15 instanceof zzdj ? (zzdj) queryLocalInterface15 : new zzdl(readStrongBinder15);
                }
                zzbw.zzb(parcel);
                registerOnMeasurementEventListener(zzdjVar2);
                break;
            case 36:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 != null) {
                    IInterface queryLocalInterface16 = readStrongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    zzdjVar = queryLocalInterface16 instanceof zzdj ? (zzdj) queryLocalInterface16 : new zzdl(readStrongBinder16);
                }
                zzbw.zzb(parcel);
                unregisterOnMeasurementEventListener(zzdjVar);
                break;
            case LangUtils.HASH_OFFSET /* 37 */:
                HashMap zza = zzbw.zza(parcel);
                zzbw.zzb(parcel);
                initForTests(zza);
                break;
            case 38:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 != null) {
                    IInterface queryLocalInterface17 = readStrongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzdiVar4 = queryLocalInterface17 instanceof zzdi ? (zzdi) queryLocalInterface17 : new zzdk(readStrongBinder17);
                }
                int readInt2 = parcel.readInt();
                zzbw.zzb(parcel);
                getTestFlag(zzdiVar4, readInt2);
                break;
            case 39:
                boolean zzc6 = zzbw.zzc(parcel);
                zzbw.zzb(parcel);
                setDataCollectionEnabled(zzc6);
                break;
            case 40:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 != null) {
                    IInterface queryLocalInterface18 = readStrongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzdiVar3 = queryLocalInterface18 instanceof zzdi ? (zzdi) queryLocalInterface18 : new zzdk(readStrongBinder18);
                }
                zzbw.zzb(parcel);
                isDataCollectionEnabled(zzdiVar3);
                break;
            case 41:
            case 47:
            default:
                return false;
            case 42:
                Bundle bundle7 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                zzbw.zzb(parcel);
                setDefaultEventParameters(bundle7);
                break;
            case 43:
                long readLong22 = parcel.readLong();
                zzbw.zzb(parcel);
                clearMeasurementEnabled(readLong22);
                break;
            case 44:
                Bundle bundle8 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                long readLong23 = parcel.readLong();
                zzbw.zzb(parcel);
                setConsent(bundle8, readLong23);
                break;
            case 45:
                Bundle bundle9 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                long readLong24 = parcel.readLong();
                zzbw.zzb(parcel);
                setConsentThirdParty(bundle9, readLong24);
                break;
            case 46:
                IBinder readStrongBinder19 = parcel.readStrongBinder();
                if (readStrongBinder19 != null) {
                    IInterface queryLocalInterface19 = readStrongBinder19.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzdiVar2 = queryLocalInterface19 instanceof zzdi ? (zzdi) queryLocalInterface19 : new zzdk(readStrongBinder19);
                }
                zzbw.zzb(parcel);
                getSessionId(zzdiVar2);
                break;
            case 48:
                Intent intent = (Intent) zzbw.zza(parcel, Intent.CREATOR);
                zzbw.zzb(parcel);
                setSgtmDebugInfo(intent);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
