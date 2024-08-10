package com.food.foodweb;


import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import lombok.NonNull;

import javax.naming.Context;
import javax.swing.text.Document;
import java.util.List;

public class DocumentAdapter extends RecyclerView.Adapter<DocumentAdapter.DocumentViewHolder> {

       private final List<Document> mDocuments;
       private final Context mContext;

       public DocumentAdapter(Context context, List<Document> documents) {
           mContext = context;
           mDocuments = documents;
       }

       @NonNull
       @Override
       public DocumentViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
           View itemView = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_document, parent, false);
           return new DocumentViewHolder(itemView);
       }

       @Override
       public void onBindViewHolder(@NonNull DocumentViewHolder holder, int position) {
           Document document = mDocuments.get(position);
           holder.textViewTitle.setText(document.getTitle());

           holder.itemView.setOnClickListener(view -> {
               Intent intent = new Intent(mContext, DetailActivity.class);
               intent.putExtra("DOCUMENT_TITLE", document.getTitle());
               intent.putExtra("DOCUMENT_DESCRIPTION", document.getDescription());
               mContext.startActivity(intent);
           });
       }
       @Override
       public int getItemCount() {
           return mDocuments.size();
       }

       static class DocumentViewHolder extends RecyclerView.ViewHolder {
           TextView textViewTitle;

           public DocumentViewHolder(View itemView) {
               super(itemView);
               textViewTitle = itemView.findViewById(R.id.document_title);
           }
       }

       public void loadMoreItems(List<Document> newDocuments) {
           int previousContentSize = mDocuments.size();
           mDocuments.addAll(newDocuments);
           notifyItemRangeInserted(previousContentSize, newDocuments.size());
       }
   }

