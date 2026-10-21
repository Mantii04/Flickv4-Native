.class public final Lcom/google/android/gms/internal/measurement/zzgv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzhe;


# instance fields
.field private final zza:Lp/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/q;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/q;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgv;->zza:Lp/q;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-eqz p2, :cond_1

    .line 10
    .line 11
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgv;->zza:Lp/q;

    .line 12
    .line 13
    if-nez p1, :cond_2

    .line 14
    .line 15
    :cond_1
    move-object p1, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p1, p2}, Lp/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lp/q;

    .line 22
    .line 23
    :goto_1
    if-nez p1, :cond_3

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_3
    if-eqz p3, :cond_4

    .line 27
    .line 28
    invoke-static {p3, p4}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    :cond_4
    invoke-virtual {p1, p4}, Lp/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    return-object p1
.end method
