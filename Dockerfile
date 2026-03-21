# Neo4j MCP Server
# Downloads and runs the official Neo4j MCP server binary

FROM alpine:3.20

ARG NEO4J_MCP_VERSION=1.4.6

# Install dependencies
RUN apk add --no-cache ca-certificates wget

# Download the binary
RUN wget -O /tmp/neo4j-mcp.tar.gz \
      "https://github.com/neo4j/mcp/releases/download/v${NEO4J_MCP_VERSION}/neo4j-mcp_Linux_x86_64.tar.gz" && \
    tar -xzf /tmp/neo4j-mcp.tar.gz -C /usr/local/bin && \
    chmod +x /usr/local/bin/neo4j-mcp && \
    rm /tmp/neo4j-mcp.tar.gz

# Verify installation
RUN neo4j-mcp -v

EXPOSE 8000

ENTRYPOINT ["neo4j-mcp"]
