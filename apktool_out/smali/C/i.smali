.class public final LC/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC/f;


# instance fields
.field public final a:LJ/i;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(LJ/i;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC/i;->a:LJ/i;

    .line 5
    .line 6
    iput p2, p0, LC/i;->c:I

    .line 7
    .line 8
    iput p3, p0, LC/i;->b:I

    .line 9
    .line 10
    iput-object p4, p0, LC/i;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getFetchStrategy()I
    .locals 1

    .line 1
    iget v0, p0, LC/i;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public getRequest()LJ/i;
    .locals 1

    .line 1
    iget-object v0, p0, LC/i;->a:LJ/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSystemFontFamilyName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LC/i;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 1
    iget v0, p0, LC/i;->b:I

    .line 2
    .line 3
    return v0
.end method
