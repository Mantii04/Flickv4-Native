.class public final synthetic Lcom/google/android/gms/internal/cast/zzej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/cast/zzek;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzek;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzej;->zza:Lcom/google/android/gms/internal/cast/zzek;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzej;->zza:Lcom/google/android/gms/internal/cast/zzek;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzek;->zza(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
