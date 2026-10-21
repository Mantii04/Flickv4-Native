.class public final Lf1/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf1/v;

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Lf1/v;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lf1/A;->b:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lf1/A;->c:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lf1/A;->d:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lf1/A;->e:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iput-object p1, p0, Lf1/A;->a:Lf1/v;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 20
    .line 21
    const-string v0, "descriptor must not be null"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method


# virtual methods
.method public build()Lf1/B;
    .locals 6

    .line 1
    new-instance v0, Lf1/B;

    .line 2
    .line 3
    iget v2, p0, Lf1/A;->b:I

    .line 4
    .line 5
    iget-boolean v3, p0, Lf1/A;->c:Z

    .line 6
    .line 7
    iget-boolean v4, p0, Lf1/A;->d:Z

    .line 8
    .line 9
    iget-boolean v5, p0, Lf1/A;->e:Z

    .line 10
    .line 11
    iget-object v1, p0, Lf1/A;->a:Lf1/v;

    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lf1/B;-><init>(Lf1/v;IZZZ)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public setIsGroupable(Z)Lf1/A;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf1/A;->d:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsTransferable(Z)Lf1/A;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf1/A;->e:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsUnselectable(Z)Lf1/A;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf1/A;->c:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setSelectionState(I)Lf1/A;
    .locals 0

    .line 1
    iput p1, p0, Lf1/A;->b:I

    .line 2
    .line 3
    return-object p0
.end method
