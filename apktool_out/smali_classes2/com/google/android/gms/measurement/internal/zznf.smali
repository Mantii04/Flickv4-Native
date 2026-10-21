.class final Lcom/google/android/gms/measurement/internal/zznf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzgh;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zznd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznd;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznf;->a:Lcom/google/android/gms/measurement/internal/zznd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznf;->a:Lcom/google/android/gms/measurement/internal/zznd;

    .line 2
    .line 3
    const/4 p5, 0x1

    .line 4
    invoke-virtual {p1, p5, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zznd;->t(ZILjava/lang/Throwable;[B)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
