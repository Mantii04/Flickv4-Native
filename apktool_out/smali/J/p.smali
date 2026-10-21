.class public final LJ/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[LJ/q;


# direct methods
.method public constructor <init>(I[LJ/q;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LJ/p;->a:I

    .line 5
    .line 6
    iput-object p2, p0, LJ/p;->b:[LJ/q;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getFonts()[LJ/q;
    .locals 1

    .line 1
    iget-object v0, p0, LJ/p;->b:[LJ/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, LJ/p;->a:I

    .line 2
    .line 3
    return v0
.end method
