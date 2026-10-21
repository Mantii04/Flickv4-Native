.class public final LY1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LY1/c;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, LY1/c;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, LY1/c;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getFamily()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LY1/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LY1/c;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LY1/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
