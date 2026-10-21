.class public final LO3/c;
.super LO3/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LO3/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;LO3/A;LO3/B;)LO3/d;
    .locals 7

    .line 1
    new-instance v0, LO3/r;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, LO3/J;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, LO3/r;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LO3/A;LO3/B;)V

    return-object v0
.end method

.method public final a(Landroid/app/Activity;LO3/d;Z)LO3/i;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/player/internal/w$a;
        }
    .end annotation

    .line 2
    check-cast p2, LO3/r;

    invoke-virtual {p2}, LO3/r;->a()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p1, p2, p3}, LO3/G;->a(Landroid/app/Activity;Landroid/os/IBinder;Z)LO3/i;

    move-result-object p1

    return-object p1
.end method
