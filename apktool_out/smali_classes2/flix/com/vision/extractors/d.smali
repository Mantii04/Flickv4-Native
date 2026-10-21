.class public final synthetic Lflix/com/vision/extractors/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lflix/com/vision/extractors/CloseloadExtractor$ByteTransform;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lflix/com/vision/extractors/CloseloadExtractor;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/extractors/CloseloadExtractor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lflix/com/vision/extractors/d;->a:I

    iput-object p1, p0, Lflix/com/vision/extractors/d;->b:Lflix/com/vision/extractors/CloseloadExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform([B)[B
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/extractors/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lflix/com/vision/extractors/d;->b:Lflix/com/vision/extractors/CloseloadExtractor;

    invoke-static {v0, p1}, Lflix/com/vision/extractors/CloseloadExtractor;->e(Lflix/com/vision/extractors/CloseloadExtractor;[B)[B

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lflix/com/vision/extractors/d;->b:Lflix/com/vision/extractors/CloseloadExtractor;

    invoke-static {v0, p1}, Lflix/com/vision/extractors/CloseloadExtractor;->a(Lflix/com/vision/extractors/CloseloadExtractor;[B)[B

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lflix/com/vision/extractors/d;->b:Lflix/com/vision/extractors/CloseloadExtractor;

    invoke-static {v0, p1}, Lflix/com/vision/extractors/CloseloadExtractor;->g(Lflix/com/vision/extractors/CloseloadExtractor;[B)[B

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lflix/com/vision/extractors/d;->b:Lflix/com/vision/extractors/CloseloadExtractor;

    invoke-static {v0, p1}, Lflix/com/vision/extractors/CloseloadExtractor;->b(Lflix/com/vision/extractors/CloseloadExtractor;[B)[B

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
