# use the official Bun image
# see all versions at https://hub.docker.com/r/oven/bun/tags
FROM oven/bun:1 AS base
WORKDIR /usr/src/app

ADD . .
RUN bun install

CMD pwd
CMD ls -la

# # [optional] tests & build
# ENV NODE_ENV=production
RUN bun run build

# # # copy production dependencies and source code into final image
# # FROM base AS release
# # COPY --from=install /temp/prod/node_modules node_modules
# # COPY --from=prerelease /usr/src/app/index.ts .
# # COPY --from=prerelease /usr/src/app/package.json .
# # COPY --from=prerelease /usr/src/app/dist .