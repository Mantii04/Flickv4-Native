.class public abstract Lcom/comcast/viper/hlsparserj/tags/Tag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final UNNAMEDATTR0:Ljava/lang/String; = "NONAME0"

.field protected static final UNNAMEDATTR1:Ljava/lang/String; = "NONAME1"


# instance fields
.field protected tag:Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getTag()Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comcast/viper/hlsparserj/tags/Tag;->tag:Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;

    .line 2
    .line 3
    return-object v0
.end method

.method public setTag(Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comcast/viper/hlsparserj/tags/Tag;->tag:Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;

    .line 2
    .line 3
    return-void
.end method

.method public yesNoBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "yes"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
