.class public final LN0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN0/c;


# instance fields
.field public final synthetic a:LN0/h;


# direct methods
.method public constructor <init>(LN0/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LN0/d;->a:LN0/h;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public binaryElement(IILv0/D;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LN0/d;->a:LN0/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, LN0/h;->binaryElement(IILv0/D;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public endMasterElement(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LN0/d;->a:LN0/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LN0/h;->endMasterElement(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public floatElement(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LN0/d;->a:LN0/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, LN0/h;->floatElement(ID)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getElementType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, LN0/d;->a:LN0/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LN0/h;->getElementType(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public integerElement(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LN0/d;->a:LN0/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, LN0/h;->integerElement(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isLevel1Element(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, LN0/d;->a:LN0/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LN0/h;->isLevel1Element(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public startMasterElement(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LN0/d;->a:LN0/h;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, LN0/h;->startMasterElement(IJJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LN0/d;->a:LN0/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LN0/h;->stringElement(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
