.class public final Lf1/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf1/X;

.field public final b:Lf1/M;

.field public c:Lf1/L;

.field public d:I

.field public e:J


# direct methods
.method public constructor <init>(Lf1/X;Lf1/M;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf1/N;->a:Lf1/X;

    .line 5
    .line 6
    iput-object p2, p0, Lf1/N;->b:Lf1/M;

    .line 7
    .line 8
    sget-object p1, Lf1/L;->c:Lf1/L;

    .line 9
    .line 10
    iput-object p1, p0, Lf1/N;->c:Lf1/L;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public filterRouteEvent(Lf1/U;ILf1/U;I)Z
    .locals 3

    .line 1
    iget v0, p0, Lf1/N;->d:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lf1/N;->c:Lf1/L;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lf1/U;->matchesSelector(Lf1/L;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lf1/k;->p:Lf1/l0;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v0}, Lf1/l0;->isTransferToLocalEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :goto_0
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Lf1/U;->isDefaultOrBluetooth()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    const/16 p1, 0x106

    .line 41
    .line 42
    if-ne p2, p1, :cond_2

    .line 43
    .line 44
    const/4 p1, 0x3

    .line 45
    if-ne p4, p1, :cond_2

    .line 46
    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    invoke-virtual {p3}, Lf1/U;->isDefaultOrBluetooth()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    xor-int/2addr p1, v1

    .line 54
    return p1

    .line 55
    :cond_2
    return v2

    .line 56
    :cond_3
    :goto_1
    return v1
.end method
