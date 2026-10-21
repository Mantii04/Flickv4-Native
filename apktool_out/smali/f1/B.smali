.class public final Lf1/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf1/v;

.field public final b:I

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Lf1/v;IZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf1/B;->a:Lf1/v;

    .line 5
    .line 6
    iput p2, p0, Lf1/B;->b:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lf1/B;->c:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lf1/B;->d:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lf1/B;->e:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getRouteDescriptor()Lf1/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/B;->a:Lf1/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelectionState()I
    .locals 1

    .line 1
    iget v0, p0, Lf1/B;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public isGroupable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/B;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTransferable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/B;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public isUnselectable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/B;->c:Z

    .line 2
    .line 3
    return v0
.end method
