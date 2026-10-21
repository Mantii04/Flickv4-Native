.class public final LJ/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LL/h;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/net/Uri;

    .line 9
    .line 10
    iput-object p1, p0, LJ/q;->a:Landroid/net/Uri;

    .line 11
    .line 12
    iput p2, p0, LJ/q;->b:I

    .line 13
    .line 14
    iput p3, p0, LJ/q;->c:I

    .line 15
    .line 16
    iput-boolean p4, p0, LJ/q;->d:Z

    .line 17
    .line 18
    iput p5, p0, LJ/q;->e:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .line 1
    iget v0, p0, LJ/q;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getTtcIndex()I
    .locals 1

    .line 1
    iget v0, p0, LJ/q;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, LJ/q;->a:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .line 1
    iget v0, p0, LJ/q;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public isItalic()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LJ/q;->d:Z

    .line 2
    .line 3
    return v0
.end method
