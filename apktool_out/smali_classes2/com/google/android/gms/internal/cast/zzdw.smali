.class final Lcom/google/android/gms/internal/cast/zzdw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
