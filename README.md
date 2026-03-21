# Neo4j MCP Server Docker Image

Docker image that packages the official [Neo4j MCP server](https://github.com/neo4j/mcp) binary for easy containerized deployment.

## Quick Start

```bash
docker run --rm -p 8000:8000 ghcr.io/uncletawnos/neo4j-mcp:latest
```

### Build Locally

```bash
docker build -t neo4j-mcp .
```

### Configuration

The container runs `neo4j-mcp` as its entrypoint. Pass any arguments directly:

```bash
docker run --rm -p 8000:8000 ghcr.io/uncletawnos/neo4j-mcp:latest --help
```

The Neo4j MCP version can be configured at build time:

```bash
docker build --build-arg NEO4J_MCP_VERSION=1.4.6 -t neo4j-mcp .
```

## Supported Architectures

- `linux/amd64`

## License

The code in this repository (Dockerfile, workflows, etc.) is licensed under the [MIT License](LICENSE).

The Neo4j MCP server binary downloaded during the build is subject to its own license terms. Please review the [Neo4j MCP repository](https://github.com/neo4j/mcp) for applicable licensing before use.
