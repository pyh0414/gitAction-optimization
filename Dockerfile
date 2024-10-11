FROM node:18-alpine

# 2. 작업 디렉토리 생성
WORKDIR /usr/src/app

# 3. 패키지 파일 복사
COPY package*.json ./

# 4. 의존성 설치
RUN npm install

# 5. TypeScript 소스 코드 복사
COPY . .

# 6. TypeScript 컴파일
RUN npx tsc

# 7. 앱 실행
CMD ["node", "dist/index.js"]

# 8. 포트 설정
EXPOSE 3000

# FROM node:18-alpine

# # 2. 작업 디렉토리 생성
# WORKDIR /usr/src/app

# # 5. TypeScript 소스 코드 복사
# COPY . .

# # 4. 의존성 설치
# RUN npm install


# # 6. TypeScript 컴파일
# RUN npx tsc

# # 7. 앱 실행
# CMD ["node", "dist/index.js"]

# # 8. 포트 설정
# EXPOSE 3000