bool check(int x,int y,int R,vector<int>&E,vector<int>&F)
{
    int r=R*R;
    for(int i=0;i<E.size();i++)
    {
        int dx=abs(x-E[i]);
        int dy=abs(y-F[i]);
        dx=dx*dx;
        dy=dy*dy;
        if(dx+dy<=r)
        return true;
    }
    return false;
}
bool safe(int a,int b,int x,int y)
{
    if(x<=a&&x>=0&&y<=b&&y>=0)
    return true;
    return  false;
}
string Solution::solve(int A, int B, int C, int D, vector<int> &E, vector<int> &F) {
    
    queue<pair<int,int> >q;
    q.push(make_pair(0,0));
  bool visit[A+1][B+1];
  visit[0][0]=true;
   memset(visit,false,sizeof(visit));
    while(!q.empty())
    {
        int x=q.front().first;
        int y=q.front().second;
     
        q.pop();
        if(x==A&&y==B)
        return "YES";
        
        for(int i=-1;i<2;i++)
            for(int j=-1;j<2;j++)
            {
                if(i==0&&j==0)
                continue;
                
                if(!check(x+i,y+j,D,E,F)&&safe(A,B,x+i,y+j)&&!visit[x+i][y+j])
                {
                    q.push(make_pair(x+i,y+j));
                    
                       visit[x+i][y+j]=true;
                }
                
            }
          //  cout<<q.size()<<endl;
        
    }
    
    return "NO";
}
