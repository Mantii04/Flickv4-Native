.class final Lcom/google/android/gms/cast/framework/zzr;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/CastSession;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzr;->a:Lcom/google/android/gms/cast/framework/CastSession;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;JIJJ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzr;->a:Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/CastSession;->m:Lcom/google/android/gms/cast/framework/zzs;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move v5, p4

    .line 10
    move-wide v6, p5

    .line 11
    move-wide/from16 v8, p7

    .line 12
    .line 13
    invoke-interface/range {v1 .. v9}, Lcom/google/android/gms/cast/framework/zzs;->zzb(Ljava/lang/String;JIJJ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
